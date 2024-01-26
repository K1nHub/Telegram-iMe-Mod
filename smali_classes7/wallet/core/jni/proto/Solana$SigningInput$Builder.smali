.class public final Lwallet/core/jni/proto/Solana$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$SigningInput;",
        "Lwallet/core/jni/proto/Solana$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7940
    invoke-static {}, Lwallet/core/jni/proto/Solana$SigningInput;->access$11900()Lwallet/core/jni/proto/Solana$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 7933
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCreateAndTransferTokenTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8520
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8521
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$15400(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearCreateTokenAccountTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14800(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearDeactivateAllStakeTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13900(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearDeactivateStakeTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8232
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8233
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13600(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearDelegateStakeTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8185
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13300(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 7991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12200(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearRecentBlockhash()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12400(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearTokenTransferTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$15100(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearTransactionType()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 7950
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12000(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearTransferTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8136
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8137
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13000(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearV0Msg()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8088
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12700(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearWithdrawAllTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8376
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8377
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14500(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public clearWithdrawTransaction()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 8328
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14200(Lwallet/core/jni/proto/Solana$SigningInput;)V

    return-object p0
.end method

.method public getCreateAndTransferTokenTransaction()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
    .locals 1

    .line 8489
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getCreateAndTransferTokenTransaction()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public getCreateTokenAccountTransaction()Lwallet/core/jni/proto/Solana$CreateTokenAccount;
    .locals 1

    .line 8393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getCreateTokenAccountTransaction()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v0

    return-object v0
.end method

.method public getDeactivateAllStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateAllStake;
    .locals 1

    .line 8249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getDeactivateAllStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    move-result-object v0

    return-object v0
.end method

.method public getDeactivateStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateStake;
    .locals 1

    .line 8201
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getDeactivateStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateStake;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateStakeTransaction()Lwallet/core/jni/proto/Solana$DelegateStake;
    .locals 1

    .line 8153
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getDelegateStakeTransaction()Lwallet/core/jni/proto/Solana$DelegateStake;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecentBlockhash()Ljava/lang/String;
    .locals 1

    .line 8006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getRecentBlockhash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecentBlockhashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getRecentBlockhashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenTransferTransaction()Lwallet/core/jni/proto/Solana$TokenTransfer;
    .locals 1

    .line 8441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getTokenTransferTransaction()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionTypeCase()Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
    .locals 1

    .line 7946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getTransactionTypeCase()Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTransaction()Lwallet/core/jni/proto/Solana$Transfer;
    .locals 1

    .line 8105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getTransferTransaction()Lwallet/core/jni/proto/Solana$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getV0Msg()Z
    .locals 1

    .line 8071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getV0Msg()Z

    move-result v0

    return v0
.end method

.method public getWithdrawAllTransaction()Lwallet/core/jni/proto/Solana$WithdrawAllStake;
    .locals 1

    .line 8345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getWithdrawAllTransaction()Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawTransaction()Lwallet/core/jni/proto/Solana$WithdrawStake;
    .locals 1

    .line 8297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getWithdrawTransaction()Lwallet/core/jni/proto/Solana$WithdrawStake;

    move-result-object v0

    return-object v0
.end method

.method public hasCreateAndTransferTokenTransaction()Z
    .locals 1

    .line 8482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasCreateAndTransferTokenTransaction()Z

    move-result v0

    return v0
.end method

.method public hasCreateTokenAccountTransaction()Z
    .locals 1

    .line 8386
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasCreateTokenAccountTransaction()Z

    move-result v0

    return v0
.end method

.method public hasDeactivateAllStakeTransaction()Z
    .locals 1

    .line 8242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasDeactivateAllStakeTransaction()Z

    move-result v0

    return v0
.end method

.method public hasDeactivateStakeTransaction()Z
    .locals 1

    .line 8194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasDeactivateStakeTransaction()Z

    move-result v0

    return v0
.end method

.method public hasDelegateStakeTransaction()Z
    .locals 1

    .line 8146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasDelegateStakeTransaction()Z

    move-result v0

    return v0
.end method

.method public hasTokenTransferTransaction()Z
    .locals 1

    .line 8434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasTokenTransferTransaction()Z

    move-result v0

    return v0
.end method

.method public hasTransferTransaction()Z
    .locals 1

    .line 8098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasTransferTransaction()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawAllTransaction()Z
    .locals 1

    .line 8338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasWithdrawAllTransaction()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawTransaction()Z
    .locals 1

    .line 8290
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->hasWithdrawTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8512
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$15300(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public mergeCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14700(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-object p0
.end method

.method public mergeDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13800(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V

    return-object p0
.end method

.method public mergeDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8225
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13500(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateStake;)V

    return-object p0
.end method

.method public mergeDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8176
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13200(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-object p0
.end method

.method public mergeTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$15000(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public mergeTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8129
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12900(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public mergeWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14400(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V

    return-object p0
.end method

.method public mergeWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8320
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14100(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-object p0
.end method

.method public setCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8504
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$15200(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public setCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8496
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$15200(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public setCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8409
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14600(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-object p0
.end method

.method public setCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14600(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-object p0
.end method

.method public setDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8264
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8265
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13700(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V

    return-object p0
.end method

.method public setDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13700(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V

    return-object p0
.end method

.method public setDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13400(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateStake;)V

    return-object p0
.end method

.method public setDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13400(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateStake;)V

    return-object p0
.end method

.method public setDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13100(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-object p0
.end method

.method public setDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8159
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$13100(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12100(Lwallet/core/jni/proto/Solana$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecentBlockhash(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12300(Lwallet/core/jni/proto/Solana$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecentBlockhashBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12500(Lwallet/core/jni/proto/Solana$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14900(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public setTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8447
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8448
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14900(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public setTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8120
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8121
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12800(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public setTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12800(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public setV0Msg(Z)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8079
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8080
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$12600(Lwallet/core/jni/proto/Solana$SigningInput;Z)V

    return-object p0
.end method

.method public setWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8360
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14300(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V

    return-object p0
.end method

.method public setWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14300(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V

    return-object p0
.end method

.method public setWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8312
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8313
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14000(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-object p0
.end method

.method public setWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8303
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8304
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->access$14000(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-object p0
.end method
