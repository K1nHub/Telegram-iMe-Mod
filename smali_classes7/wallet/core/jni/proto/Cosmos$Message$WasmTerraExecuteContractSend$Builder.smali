.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSendOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7943
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13200()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 7936
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoin(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;"
        }
    .end annotation

    .line 8338
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8339
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoin(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8323
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public addCoinBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$15100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 8120
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8121
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public clearCoin()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 8351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$15000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 8065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public clearMsg()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 8223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public clearRecipientContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 8158
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14200(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public clearSenderAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 7996
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7997
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8095
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoin(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8280
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getCoin(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCoinBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8294
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getCoinBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCoinCount()I
    .locals 1

    .line 8267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getCoinCount()I

    move-result v0

    return v0
.end method

.method public getCoinList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    .line 8255
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getCoinList()Ljava/util/List;

    move-result-object v0

    .line 8254
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 8026
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 8184
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientContractAddress()Ljava/lang/String;
    .locals 1

    .line 8131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getRecipientContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 7957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getSenderAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8107
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCoin(ILjava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8308
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;ILjava/lang/String;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8080
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8081
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8210
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMsgBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8238
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8149
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8150
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8169
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8170
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$14300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7983
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8011
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->access$13500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
