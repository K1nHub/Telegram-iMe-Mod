.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGenericOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGenericOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9537
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$16500()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 9530
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoins(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
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
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;"
        }
    .end annotation

    .line 9879
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoins(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
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

    .line 9864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    .line 9866
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 9865
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addCoins(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
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

    .line 9836
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9837
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addCoins(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addCoins(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public clearCoins()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1

    .line 9892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1

    .line 9659
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9660
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-object p0
.end method

.method public clearExecuteMsg()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1

    .line 9728
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-object p0
.end method

.method public clearSenderAddress()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1

    .line 9590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$16700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

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

    .line 9782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getCoins(I)Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object p1

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 9771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getCoinsCount()I

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

    .line 9758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    .line 9759
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getCoinsList()Ljava/util/List;

    move-result-object v0

    .line 9758
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 9620
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExecuteMsg()Ljava/lang/String;
    .locals 1

    .line 9689
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getExecuteMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecuteMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9702
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getExecuteMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 9551
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getSenderAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeCoins(I)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$18000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;I)V

    return-object p0
.end method

.method public setCoins(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
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

    .line 9808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    .line 9810
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 9809
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setCoins(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
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

    .line 9794
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9646
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$16900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExecuteMsg(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17200(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExecuteMsgBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9743
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9744
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$17400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9577
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9578
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$16600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9606
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->access$16800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
