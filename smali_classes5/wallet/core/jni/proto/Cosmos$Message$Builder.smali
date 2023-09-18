.class public final Lwallet/core/jni/proto/Cosmos$Message$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message;",
        "Lwallet/core/jni/proto/Cosmos$Message$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17647
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message;->access$30400()Lwallet/core/jni/proto/Cosmos$Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 17640
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuthGrant()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18426
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$35300(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearAuthRevoke()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18474
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$35600(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17657
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17658
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$30500(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearMsgVote()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$35900(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearRawJsonMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17994
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$32600(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearRestakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$32000(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearSendCoinsMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17706
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17707
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$30800(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearSignDirectMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$35000(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearStakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$31400(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearThorchainSendMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$33500(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearTransferTokensMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17754
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17755
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$31100(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearUnstakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$31700(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWasmExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$34700(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWasmExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18282
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18283
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$34400(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWasmExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$34100(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWasmTerraExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18186
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$33800(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWasmTerraExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18090
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$33200(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWasmTerraExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 18042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$32900(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearWithdrawStakeRewardMessage()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17946
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17947
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message;->access$32300(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public getAuthGrant()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
    .locals 1

    .line 18395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getAuthGrant()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    move-result-object v0

    return-object v0
.end method

.method public getAuthRevoke()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
    .locals 1

    .line 18443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getAuthRevoke()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
    .locals 1

    .line 17653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getMessageOneofCase()Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getMsgVote()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
    .locals 1

    .line 18491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getMsgVote()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    move-result-object v0

    return-object v0
.end method

.method public getRawJsonMessage()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
    .locals 1

    .line 17963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getRawJsonMessage()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    move-result-object v0

    return-object v0
.end method

.method public getRestakeMessage()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
    .locals 1

    .line 17867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getRestakeMessage()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSendCoinsMessage()Lwallet/core/jni/proto/Cosmos$Message$Send;
    .locals 1

    .line 17675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getSendCoinsMessage()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v0

    return-object v0
.end method

.method public getSignDirectMessage()Lwallet/core/jni/proto/Cosmos$Message$SignDirect;
    .locals 1

    .line 18347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getSignDirectMessage()Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    move-result-object v0

    return-object v0
.end method

.method public getStakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Delegate;
    .locals 1

    .line 17771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getStakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getThorchainSendMessage()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
    .locals 1

    .line 18107
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getThorchainSendMessage()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTokensMessage()Lwallet/core/jni/proto/Cosmos$Message$Transfer;
    .locals 1

    .line 17723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getTransferTokensMessage()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getUnstakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
    .locals 1

    .line 17819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getUnstakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v0

    return-object v0
.end method

.method public getWasmExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
    .locals 1

    .line 18299
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWasmExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getWasmExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
    .locals 1

    .line 18251
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWasmExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    return-object v0
.end method

.method public getWasmExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
    .locals 1

    .line 18203
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWasmExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getWasmTerraExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
    .locals 1

    .line 18155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWasmTerraExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getWasmTerraExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
    .locals 1

    .line 18059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWasmTerraExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    return-object v0
.end method

.method public getWasmTerraExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
    .locals 1

    .line 18011
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWasmTerraExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawStakeRewardMessage()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
    .locals 1

    .line 17915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->getWithdrawStakeRewardMessage()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthGrant()Z
    .locals 1

    .line 18388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasAuthGrant()Z

    move-result v0

    return v0
.end method

.method public hasAuthRevoke()Z
    .locals 1

    .line 18436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasAuthRevoke()Z

    move-result v0

    return v0
.end method

.method public hasMsgVote()Z
    .locals 1

    .line 18484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasMsgVote()Z

    move-result v0

    return v0
.end method

.method public hasRawJsonMessage()Z
    .locals 1

    .line 17956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasRawJsonMessage()Z

    move-result v0

    return v0
.end method

.method public hasRestakeMessage()Z
    .locals 1

    .line 17860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasRestakeMessage()Z

    move-result v0

    return v0
.end method

.method public hasSendCoinsMessage()Z
    .locals 1

    .line 17668
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasSendCoinsMessage()Z

    move-result v0

    return v0
.end method

.method public hasSignDirectMessage()Z
    .locals 1

    .line 18340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasSignDirectMessage()Z

    move-result v0

    return v0
.end method

.method public hasStakeMessage()Z
    .locals 1

    .line 17764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasStakeMessage()Z

    move-result v0

    return v0
.end method

.method public hasThorchainSendMessage()Z
    .locals 1

    .line 18100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasThorchainSendMessage()Z

    move-result v0

    return v0
.end method

.method public hasTransferTokensMessage()Z
    .locals 1

    .line 17716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasTransferTokensMessage()Z

    move-result v0

    return v0
.end method

.method public hasUnstakeMessage()Z
    .locals 1

    .line 17812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasUnstakeMessage()Z

    move-result v0

    return v0
.end method

.method public hasWasmExecuteContractGeneric()Z
    .locals 1

    .line 18292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWasmExecuteContractGeneric()Z

    move-result v0

    return v0
.end method

.method public hasWasmExecuteContractSendMessage()Z
    .locals 1

    .line 18244
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWasmExecuteContractSendMessage()Z

    move-result v0

    return v0
.end method

.method public hasWasmExecuteContractTransferMessage()Z
    .locals 1

    .line 18196
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWasmExecuteContractTransferMessage()Z

    move-result v0

    return v0
.end method

.method public hasWasmTerraExecuteContractGeneric()Z
    .locals 1

    .line 18148
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWasmTerraExecuteContractGeneric()Z

    move-result v0

    return v0
.end method

.method public hasWasmTerraExecuteContractSendMessage()Z
    .locals 1

    .line 18052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWasmTerraExecuteContractSendMessage()Z

    move-result v0

    return v0
.end method

.method public hasWasmTerraExecuteContractTransferMessage()Z
    .locals 1

    .line 18004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWasmTerraExecuteContractTransferMessage()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawStakeRewardMessage()Z
    .locals 1

    .line 17908
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message;->hasWithdrawStakeRewardMessage()Z

    move-result v0

    return v0
.end method

.method public mergeAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public mergeAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18466
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-object p0
.end method

.method public mergeMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18514
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-object p0
.end method

.method public mergeRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-object p0
.end method

.method public mergeRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public mergeSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$30700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public mergeSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-object p0
.end method

.method public mergeStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17794
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public mergeThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18130
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-object p0
.end method

.method public mergeTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17746
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17747
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public mergeUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17842
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17843
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public mergeWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18322
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public mergeWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18274
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18275
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public mergeWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18226
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18227
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public mergeWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18178
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18179
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-object p0
.end method

.method public mergeWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18082
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public mergeWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18034
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18035
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public mergeWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-object p0
.end method

.method public setAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public setAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public setAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18458
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18459
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-object p0
.end method

.method public setAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-object p0
.end method

.method public setMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-object p0
.end method

.method public setMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$35700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-object p0
.end method

.method public setRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-object p0
.end method

.method public setRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17969
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-object p0
.end method

.method public setRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public setRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public setSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$30600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public setSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17681
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$30600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public setSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18362
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-object p0
.end method

.method public setSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18354
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-object p0
.end method

.method public setStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public setStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17777
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public setThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-object p0
.end method

.method public setThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-object p0
.end method

.method public setTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$30900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public setTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17729
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$30900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public setUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17834
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public setUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17825
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$31500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public setWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18314
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public setWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18305
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18306
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public setWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18266
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public setWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$34200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public setWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18218
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18219
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public setWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18209
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18210
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public setWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18170
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-object p0
.end method

.method public setWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18161
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18162
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-object p0
.end method

.method public setWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public setWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$33000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public setWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 18026
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18027
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public setWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public setWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 17930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-object p0
.end method

.method public setWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17921
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->access$32100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-object p0
.end method
