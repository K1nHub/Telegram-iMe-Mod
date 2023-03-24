.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSendOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11355
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$19500()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 11348
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoin(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
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
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;"
        }
    .end annotation

    .line 11750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$21200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoin(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$21100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public addCoinBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$21400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11532
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public clearCoin()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$21300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11477
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public clearMsg()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11635
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11636
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public clearRecipientContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20500(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public clearSenderAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11408
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11409
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$19700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getAmount()Lcom/google/protobuf/ByteString;

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

    .line 11692
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getCoin(I)Ljava/lang/String;

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

    .line 11706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getCoinBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCoinCount()I
    .locals 1

    .line 11679
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getCoinCount()I

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

    .line 11666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    .line 11667
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getCoinList()Ljava/util/List;

    move-result-object v0

    .line 11666
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 11438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 11596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientContractAddress()Ljava/lang/String;
    .locals 1

    .line 11543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getRecipientContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11552
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 11369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getSenderAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCoin(ILjava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
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

    .line 11720
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11721
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$21000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;ILjava/lang/String;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$19900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11622
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMsgBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11650
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11651
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$20600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11395
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$19600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->access$19800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
