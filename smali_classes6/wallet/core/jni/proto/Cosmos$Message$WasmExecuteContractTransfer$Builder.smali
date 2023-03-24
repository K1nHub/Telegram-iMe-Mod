.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10388
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18200()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 10381
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1

    .line 10565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$19000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1

    .line 10510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public clearRecipientAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1

    .line 10603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$19200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public clearSenderAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1

    .line 10441
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 10471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 10576
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getRecipientAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 10402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getSenderAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10552
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$19100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10614
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10615
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$19300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->access$18500(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
