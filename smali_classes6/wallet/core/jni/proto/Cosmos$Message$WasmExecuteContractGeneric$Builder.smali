.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGenericOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGenericOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12419
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$21600()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 12412
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoins(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
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
            "+",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;)",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;"
        }
    .end annotation

    .line 12761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoins(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 12746
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12747
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    .line 12748
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 12747
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addCoins(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
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

    .line 12718
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12719
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addCoins(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addCoins(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12704
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12705
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public clearCoins()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1

    .line 12774
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12775
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$23000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1

    .line 12541
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12542
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public clearExecuteMsg()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1

    .line 12610
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public clearSenderAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1

    .line 12472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$21800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-object p0
.end method

.method public getCoins(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 12664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getCoins(I)Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object p1

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 12653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getCoinsCount()I

    move-result v0

    return v0
.end method

.method public getCoinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 12640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    .line 12641
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getCoinsList()Ljava/util/List;

    move-result-object v0

    .line 12640
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 12502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExecuteMsg()Ljava/lang/String;
    .locals 1

    .line 12571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getExecuteMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecuteMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12584
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getExecuteMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 12433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getSenderAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeCoins(I)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 12787
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12788
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$23100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;I)V

    return-object p0
.end method

.method public setCoins(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 12690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    .line 12692
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 12691
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setCoins(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
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

    .line 12676
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12677
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12528
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12529
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExecuteMsg(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExecuteMsgBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$22500(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$21700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12487
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12488
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->access$21900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
