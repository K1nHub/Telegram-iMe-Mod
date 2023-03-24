.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6976
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$11900()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 6969
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1

    .line 7153
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7154
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1

    .line 7098
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public clearRecipientAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1

    .line 7191
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7192
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public clearSenderAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1

    .line 7029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 7059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 7164
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getRecipientAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 6990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getSenderAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7182
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7183
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7202
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7203
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$13000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7016
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7017
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7044
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7045
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->access$12200(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
