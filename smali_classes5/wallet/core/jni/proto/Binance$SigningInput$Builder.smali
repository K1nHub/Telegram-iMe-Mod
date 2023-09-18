.class public final Lwallet/core/jni/proto/Binance$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SigningInput;",
        "Lwallet/core/jni/proto/Binance$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17732
    invoke-static {}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29000()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 17725
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountNumber()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17852
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17853
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29600(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearBurnOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18629
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34100(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearCancelTradeOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18149
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18150
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31100(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17797
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29300(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearClaimHTLTOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32900(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearDepositHTLTOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18389
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18390
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32600(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearFreezeOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18245
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18246
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31700(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearHtltOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32300(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearIssueOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18533
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18534
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33500(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17998
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30200(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearMintOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33800(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearOrderOneof()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29100(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18053
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18054
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30500(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearRefundHTLTOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33200(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearSendOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18197
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18198
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31400(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29800(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearSideDelegateOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34700(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearSideRedelegateOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35000(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearSideUndelegateOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35300(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearSource()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30000(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearTimeLockOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18869
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18870
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35600(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearTimeRelockOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35900(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearTimeUnlockOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$36200(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearTradeOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18101
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30800(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearTransferOutOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34400(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public clearUnfreezeOrder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 18293
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18294
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32000(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public getAccountNumber()J
    .locals 2

    .line 17827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getAccountNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBurnOrder()Lwallet/core/jni/proto/Binance$TokenBurnOrder;
    .locals 1

    .line 18598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getBurnOrder()Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    move-result-object v0

    return-object v0
.end method

.method public getCancelTradeOrder()Lwallet/core/jni/proto/Binance$CancelTradeOrder;
    .locals 1

    .line 18118
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getCancelTradeOrder()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 17758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClaimHTLTOrder()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
    .locals 1

    .line 18406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getClaimHTLTOrder()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v0

    return-object v0
.end method

.method public getDepositHTLTOrder()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
    .locals 1

    .line 18358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getDepositHTLTOrder()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    move-result-object v0

    return-object v0
.end method

.method public getFreezeOrder()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;
    .locals 1

    .line 18214
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getFreezeOrder()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    move-result-object v0

    return-object v0
.end method

.method public getHtltOrder()Lwallet/core/jni/proto/Binance$HTLTOrder;
    .locals 1

    .line 18310
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getHtltOrder()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    return-object v0
.end method

.method public getIssueOrder()Lwallet/core/jni/proto/Binance$TokenIssueOrder;
    .locals 1

    .line 18502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getIssueOrder()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 17959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMintOrder()Lwallet/core/jni/proto/Binance$TokenMintOrder;
    .locals 1

    .line 18550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getMintOrder()Lwallet/core/jni/proto/Binance$TokenMintOrder;

    move-result-object v0

    return-object v0
.end method

.method public getOrderOneofCase()Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
    .locals 1

    .line 17738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getOrderOneofCase()Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 18028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefundHTLTOrder()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;
    .locals 1

    .line 18454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getRefundHTLTOrder()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    move-result-object v0

    return-object v0
.end method

.method public getSendOrder()Lwallet/core/jni/proto/Binance$SendOrder;
    .locals 1

    .line 18166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getSendOrder()Lwallet/core/jni/proto/Binance$SendOrder;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 17867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSideDelegateOrder()Lwallet/core/jni/proto/Binance$SideChainDelegate;
    .locals 1

    .line 18694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getSideDelegateOrder()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSideRedelegateOrder()Lwallet/core/jni/proto/Binance$SideChainRedelegate;
    .locals 1

    .line 18742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getSideRedelegateOrder()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSideUndelegateOrder()Lwallet/core/jni/proto/Binance$SideChainUndelegate;
    .locals 1

    .line 18790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getSideUndelegateOrder()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSource()J
    .locals 2

    .line 17911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getSource()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeLockOrder()Lwallet/core/jni/proto/Binance$TimeLockOrder;
    .locals 1

    .line 18838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getTimeLockOrder()Lwallet/core/jni/proto/Binance$TimeLockOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRelockOrder()Lwallet/core/jni/proto/Binance$TimeRelockOrder;
    .locals 1

    .line 18886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getTimeRelockOrder()Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUnlockOrder()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
    .locals 1

    .line 18934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getTimeUnlockOrder()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTradeOrder()Lwallet/core/jni/proto/Binance$TradeOrder;
    .locals 1

    .line 18070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getTradeOrder()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTransferOutOrder()Lwallet/core/jni/proto/Binance$TransferOut;
    .locals 1

    .line 18646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getTransferOutOrder()Lwallet/core/jni/proto/Binance$TransferOut;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeOrder()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;
    .locals 1

    .line 18262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getUnfreezeOrder()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    move-result-object v0

    return-object v0
.end method

.method public hasBurnOrder()Z
    .locals 1

    .line 18591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasBurnOrder()Z

    move-result v0

    return v0
.end method

.method public hasCancelTradeOrder()Z
    .locals 1

    .line 18111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasCancelTradeOrder()Z

    move-result v0

    return v0
.end method

.method public hasClaimHTLTOrder()Z
    .locals 1

    .line 18399
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasClaimHTLTOrder()Z

    move-result v0

    return v0
.end method

.method public hasDepositHTLTOrder()Z
    .locals 1

    .line 18351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasDepositHTLTOrder()Z

    move-result v0

    return v0
.end method

.method public hasFreezeOrder()Z
    .locals 1

    .line 18207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasFreezeOrder()Z

    move-result v0

    return v0
.end method

.method public hasHtltOrder()Z
    .locals 1

    .line 18303
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasHtltOrder()Z

    move-result v0

    return v0
.end method

.method public hasIssueOrder()Z
    .locals 1

    .line 18495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasIssueOrder()Z

    move-result v0

    return v0
.end method

.method public hasMintOrder()Z
    .locals 1

    .line 18543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasMintOrder()Z

    move-result v0

    return v0
.end method

.method public hasRefundHTLTOrder()Z
    .locals 1

    .line 18447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasRefundHTLTOrder()Z

    move-result v0

    return v0
.end method

.method public hasSendOrder()Z
    .locals 1

    .line 18159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasSendOrder()Z

    move-result v0

    return v0
.end method

.method public hasSideDelegateOrder()Z
    .locals 1

    .line 18687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasSideDelegateOrder()Z

    move-result v0

    return v0
.end method

.method public hasSideRedelegateOrder()Z
    .locals 1

    .line 18735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasSideRedelegateOrder()Z

    move-result v0

    return v0
.end method

.method public hasSideUndelegateOrder()Z
    .locals 1

    .line 18783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasSideUndelegateOrder()Z

    move-result v0

    return v0
.end method

.method public hasTimeLockOrder()Z
    .locals 1

    .line 18831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasTimeLockOrder()Z

    move-result v0

    return v0
.end method

.method public hasTimeRelockOrder()Z
    .locals 1

    .line 18879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasTimeRelockOrder()Z

    move-result v0

    return v0
.end method

.method public hasTimeUnlockOrder()Z
    .locals 1

    .line 18927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasTimeUnlockOrder()Z

    move-result v0

    return v0
.end method

.method public hasTradeOrder()Z
    .locals 1

    .line 18063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasTradeOrder()Z

    move-result v0

    return v0
.end method

.method public hasTransferOutOrder()Z
    .locals 1

    .line 18639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasTransferOutOrder()Z

    move-result v0

    return v0
.end method

.method public hasUnfreezeOrder()Z
    .locals 1

    .line 18255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->hasUnfreezeOrder()Z

    move-result v0

    return v0
.end method

.method public mergeBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18621
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-object p0
.end method

.method public mergeCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-object p0
.end method

.method public mergeClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-object p0
.end method

.method public mergeDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18381
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-object p0
.end method

.method public mergeFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18237
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18238
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-object p0
.end method

.method public mergeHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public mergeIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public mergeMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18573
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-object p0
.end method

.method public mergeRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18477
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-object p0
.end method

.method public mergeSendOrder(Lwallet/core/jni/proto/Binance$SendOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18189
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18190
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-object p0
.end method

.method public mergeSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public mergeSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public mergeSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18813
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public mergeTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public mergeTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18909
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public mergeTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18957
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18958
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$36100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-object p0
.end method

.method public mergeTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18093
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18094
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public mergeTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18669
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18670
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public mergeUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18285
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-object p0
.end method

.method public setAccountNumber(J)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17839
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17840
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29500(Lwallet/core/jni/proto/Binance$SigningInput;J)V

    return-object p0
.end method

.method public setBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18613
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-object p0
.end method

.method public setBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18604
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18605
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-object p0
.end method

.method public setCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18133
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18134
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-object p0
.end method

.method public setCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18124
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-object p0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29200(Lwallet/core/jni/proto/Binance$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29400(Lwallet/core/jni/proto/Binance$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18421
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-object p0
.end method

.method public setClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-object p0
.end method

.method public setDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18373
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18374
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-object p0
.end method

.method public setDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18364
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-object p0
.end method

.method public setFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18229
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18230
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-object p0
.end method

.method public setFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-object p0
.end method

.method public setHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18325
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public setHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18316
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$32100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public setIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public setIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18508
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18509
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17985
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30100(Lwallet/core/jni/proto/Binance$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30300(Lwallet/core/jni/proto/Binance$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-object p0
.end method

.method public setMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18041
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30400(Lwallet/core/jni/proto/Binance$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-object p0
.end method

.method public setRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18460
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18461
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$33000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-object p0
.end method

.method public setSendOrder(Lwallet/core/jni/proto/Binance$SendOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-object p0
.end method

.method public setSendOrder(Lwallet/core/jni/proto/Binance$SendOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18172
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-object p0
.end method

.method public setSequence(J)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17879
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29700(Lwallet/core/jni/proto/Binance$SigningInput;J)V

    return-object p0
.end method

.method public setSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18709
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18710
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public setSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18700
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18701
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public setSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public setSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public setSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public setSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public setSource(J)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SigningInput;->access$29900(Lwallet/core/jni/proto/Binance$SigningInput;J)V

    return-object p0
.end method

.method public setTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18853
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18854
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public setTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public setTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18901
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18902
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public setTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$35700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public setTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$36000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-object p0
.end method

.method public setTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18940
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$36000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-object p0
.end method

.method public setTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public setTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$30600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public setTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18661
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18662
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public setTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18652
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$34200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public setUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18277
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18278
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-object p0
.end method

.method public setUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->access$31800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-object p0
.end method
