.class public final Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$SigningInput;",
        "Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6037
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9300()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 6030
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChainId()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9500(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6270
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10400(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6230
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10200(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearMaxFeePerGas()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10800(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearMaxInclusionFeePerGas()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6313
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10600(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9700(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6465
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11300(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11000(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearTransaction()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11600(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearTxMode()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6187
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6188
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10000(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public clearUserOperation()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6607
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11900(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6051
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6203
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFeePerGas()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getMaxFeePerGas()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMaxInclusionFeePerGas()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getMaxInclusionFeePerGas()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6440
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 6371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6384
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Ethereum$Transaction;
    .locals 1

    .line 6490
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getTransaction()Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTxMode()Lwallet/core/jni/proto/Ethereum$TransactionMode;
    .locals 1

    .line 6160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getTxMode()Lwallet/core/jni/proto/Ethereum$TransactionMode;

    move-result-object v0

    return-object v0
.end method

.method public getTxModeValue()I
    .locals 1

    .line 6132
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getTxModeValue()I

    move-result v0

    return v0
.end method

.method public getUserOperation()Lwallet/core/jni/proto/Ethereum$UserOperation;
    .locals 1

    .line 6561
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getUserOperation()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 6479
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public hasUserOperation()Z
    .locals 1

    .line 6550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->hasUserOperation()Z

    move-result v0

    return v0
.end method

.method public mergeTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11500(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public mergeUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6596
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6597
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11800(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public setChainId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6063
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9400(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10300(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10100(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMaxFeePerGas(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6342
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6343
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10700(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMaxInclusionFeePerGas(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10500(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6103
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6104
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9600(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6452
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11200(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$10900(Lwallet/core/jni/proto/Ethereum$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6425
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6426
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11100(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Ethereum$Transaction$Builder;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11400(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11400(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public setTxMode(Lwallet/core/jni/proto/Ethereum$TransactionMode;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6173
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9900(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$TransactionMode;)V

    return-object p0
.end method

.method public setTxModeValue(I)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$9800(Lwallet/core/jni/proto/Ethereum$SigningInput;I)V

    return-object p0
.end method

.method public setUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6584
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11700(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public setUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6571
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->access$11700(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method
