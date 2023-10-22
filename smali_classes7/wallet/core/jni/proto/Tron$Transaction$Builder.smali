.class public final Lwallet/core/jni/proto/Tron$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$Transaction;",
        "Lwallet/core/jni/proto/Tron$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12248
    invoke-static {}, Lwallet/core/jni/proto/Tron$Transaction;->access$18900()Lwallet/core/jni/proto/Tron$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 12241
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBlockHeader()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$19700(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearContractOneof()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12258
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12259
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$19000(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearDelegateResource()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 13122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$24100(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearExpiration()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$19400(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearFeeLimit()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12450
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$19900(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearFreezeBalance()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$20800(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearFreezeBalanceV2()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$23200(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$19200(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12498
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$20200(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearTransferAsset()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12546
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$20500(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearTransferTrc20Contract()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$22900(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearTriggerSmartContract()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$22600(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearUndelegateResource()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 13170
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$24400(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearUnfreezeAsset()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$21400(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearUnfreezeBalance()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12642
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12643
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$21100(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearUnfreezeBalanceV2()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 13026
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13027
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$23500(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearVoteAsset()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$22000(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearVoteWitness()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12834
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$22300(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearWithdrawBalance()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$21700(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public clearWithdrawExpireUnfreeze()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 13074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->access$23800(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public getBlockHeader()Lwallet/core/jni/proto/Tron$BlockHeader;
    .locals 1

    .line 12364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getBlockHeader()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v0

    return-object v0
.end method

.method public getContractOneofCase()Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
    .locals 1

    .line 12254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getContractOneofCase()Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateResource()Lwallet/core/jni/proto/Tron$DelegateResourceContract;
    .locals 1

    .line 13091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getDelegateResource()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 12314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFeeLimit()J
    .locals 2

    .line 12425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getFeeLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreezeBalance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
    .locals 1

    .line 12563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getFreezeBalance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v0

    return-object v0
.end method

.method public getFreezeBalanceV2()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
    .locals 1

    .line 12947
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getFreezeBalanceV2()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 12274
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Tron$TransferContract;
    .locals 1

    .line 12467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getTransfer()Lwallet/core/jni/proto/Tron$TransferContract;

    move-result-object v0

    return-object v0
.end method

.method public getTransferAsset()Lwallet/core/jni/proto/Tron$TransferAssetContract;
    .locals 1

    .line 12515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getTransferAsset()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTrc20Contract()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
    .locals 1

    .line 12899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getTransferTrc20Contract()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerSmartContract()Lwallet/core/jni/proto/Tron$TriggerSmartContract;
    .locals 1

    .line 12851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getTriggerSmartContract()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v0

    return-object v0
.end method

.method public getUndelegateResource()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
    .locals 1

    .line 13139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getUndelegateResource()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeAsset()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
    .locals 1

    .line 12659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getUnfreezeAsset()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeBalance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;
    .locals 1

    .line 12611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getUnfreezeBalance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeBalanceV2()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;
    .locals 1

    .line 12995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getUnfreezeBalanceV2()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    move-result-object v0

    return-object v0
.end method

.method public getVoteAsset()Lwallet/core/jni/proto/Tron$VoteAssetContract;
    .locals 1

    .line 12755
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getVoteAsset()Lwallet/core/jni/proto/Tron$VoteAssetContract;

    move-result-object v0

    return-object v0
.end method

.method public getVoteWitness()Lwallet/core/jni/proto/Tron$VoteWitnessContract;
    .locals 1

    .line 12803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getVoteWitness()Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawBalance()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;
    .locals 1

    .line 12707
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getWithdrawBalance()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawExpireUnfreeze()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
    .locals 1

    .line 13043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->getWithdrawExpireUnfreeze()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    move-result-object v0

    return-object v0
.end method

.method public hasBlockHeader()Z
    .locals 1

    .line 12353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasBlockHeader()Z

    move-result v0

    return v0
.end method

.method public hasDelegateResource()Z
    .locals 1

    .line 13084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasDelegateResource()Z

    move-result v0

    return v0
.end method

.method public hasFreezeBalance()Z
    .locals 1

    .line 12556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasFreezeBalance()Z

    move-result v0

    return v0
.end method

.method public hasFreezeBalanceV2()Z
    .locals 1

    .line 12940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasFreezeBalanceV2()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 12460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public hasTransferAsset()Z
    .locals 1

    .line 12508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasTransferAsset()Z

    move-result v0

    return v0
.end method

.method public hasTransferTrc20Contract()Z
    .locals 1

    .line 12892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasTransferTrc20Contract()Z

    move-result v0

    return v0
.end method

.method public hasTriggerSmartContract()Z
    .locals 1

    .line 12844
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasTriggerSmartContract()Z

    move-result v0

    return v0
.end method

.method public hasUndelegateResource()Z
    .locals 1

    .line 13132
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasUndelegateResource()Z

    move-result v0

    return v0
.end method

.method public hasUnfreezeAsset()Z
    .locals 1

    .line 12652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasUnfreezeAsset()Z

    move-result v0

    return v0
.end method

.method public hasUnfreezeBalance()Z
    .locals 1

    .line 12604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasUnfreezeBalance()Z

    move-result v0

    return v0
.end method

.method public hasUnfreezeBalanceV2()Z
    .locals 1

    .line 12988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasUnfreezeBalanceV2()Z

    move-result v0

    return v0
.end method

.method public hasVoteAsset()Z
    .locals 1

    .line 12748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasVoteAsset()Z

    move-result v0

    return v0
.end method

.method public hasVoteWitness()Z
    .locals 1

    .line 12796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasVoteWitness()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawBalance()Z
    .locals 1

    .line 12700
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasWithdrawBalance()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawExpireUnfreeze()Z
    .locals 1

    .line 13036
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$Transaction;->hasWithdrawExpireUnfreeze()Z

    move-result v0

    return v0
.end method

.method public mergeBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$19600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public mergeDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13114
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$24000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public mergeFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12586
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public mergeFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferContract;)V

    return-object p0
.end method

.method public mergeTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public mergeTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12922
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12923
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22800(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public mergeTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public mergeUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13162
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13163
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$24300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public mergeUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12682
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12683
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V

    return-object p0
.end method

.method public mergeUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12634
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12635
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-object p0
.end method

.method public mergeUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13018
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public mergeVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public mergeVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-object p0
.end method

.method public mergeWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12730
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V

    return-object p0
.end method

.method public mergeWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13066
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13067
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V

    return-object p0
.end method

.method public setBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12387
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$19500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public setBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12374
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$19500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public setDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13106
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13107
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public setDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13097
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public setExpiration(J)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12326
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$Transaction;->access$19300(Lwallet/core/jni/proto/Tron$Transaction;J)V

    return-object p0
.end method

.method public setFeeLimit(J)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$Transaction;->access$19800(Lwallet/core/jni/proto/Tron$Transaction;J)V

    return-object p0
.end method

.method public setFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12578
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public setFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12569
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public setFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public setFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12954
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public setTimestamp(J)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12286
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12287
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$Transaction;->access$19100(Lwallet/core/jni/proto/Tron$Transaction;J)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Tron$TransferContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TransferContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferContract;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12473
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12474
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferContract;)V

    return-object p0
.end method

.method public setTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12530
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public setTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12521
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public setTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public setTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public setTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public setTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12858
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public setUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13154
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$24200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public setUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$24200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public setUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V

    return-object p0
.end method

.method public setUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12665
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V

    return-object p0
.end method

.method public setUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12626
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12627
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-object p0
.end method

.method public setUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$20900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-object p0
.end method

.method public setUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13010
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13011
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public setUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public setVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12770
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21800(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public setVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21800(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public setVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-object p0
.end method

.method public setVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$22100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-object p0
.end method

.method public setWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12722
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V

    return-object p0
.end method

.method public setWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12713
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12714
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$21500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V

    return-object p0
.end method

.method public setWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13058
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V

    return-object p0
.end method

.method public setWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13049
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13050
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->access$23600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V

    return-object p0
.end method
