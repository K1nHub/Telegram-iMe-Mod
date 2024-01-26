.class public final Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$SwapOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutput;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4045
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$5600()Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/THORChainSwap$1;)V
    .locals 0

    .line 4038
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinance()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7500(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public clearBitcoin()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4307
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6900(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4259
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6600(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public clearEthereum()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7200(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public clearFromChain()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6000(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public clearSigningInputOneof()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4055
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4056
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$5700(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public clearToChain()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4188
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4189
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6300(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V

    return-object p0
.end method

.method public getBinance()Lwallet/core/jni/proto/Binance$SigningInput;
    .locals 1

    .line 4372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getBinance()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v0

    return-object v0
.end method

.method public getBitcoin()Lwallet/core/jni/proto/Bitcoin$SigningInput;
    .locals 1

    .line 4276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getBitcoin()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/THORChainSwap$Error;
    .locals 1

    .line 4213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getError()Lwallet/core/jni/proto/THORChainSwap$Error;

    move-result-object v0

    return-object v0
.end method

.method public getEthereum()Lwallet/core/jni/proto/Ethereum$SigningInput;
    .locals 1

    .line 4324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getEthereum()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    return-object v0
.end method

.method public getFromChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
    .locals 1

    .line 4097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getFromChain()Lwallet/core/jni/proto/THORChainSwap$Chain;

    move-result-object v0

    return-object v0
.end method

.method public getFromChainValue()I
    .locals 1

    .line 4071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getFromChainValue()I

    move-result v0

    return v0
.end method

.method public getSigningInputOneofCase()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
    .locals 1

    .line 4051
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getSigningInputOneofCase()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getToChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
    .locals 1

    .line 4163
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getToChain()Lwallet/core/jni/proto/THORChainSwap$Chain;

    move-result-object v0

    return-object v0
.end method

.method public getToChainValue()I
    .locals 1

    .line 4137
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->getToChainValue()I

    move-result v0

    return v0
.end method

.method public hasBinance()Z
    .locals 1

    .line 4365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->hasBinance()Z

    move-result v0

    return v0
.end method

.method public hasBitcoin()Z
    .locals 1

    .line 4269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->hasBitcoin()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 4202
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasEthereum()Z
    .locals 1

    .line 4317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->hasEthereum()Z

    move-result v0

    return v0
.end method

.method public mergeBinance(Lwallet/core/jni/proto/Binance$SigningInput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4395
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7400(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public mergeBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6800(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public mergeError(Lwallet/core/jni/proto/THORChainSwap$Error;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4248
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6500(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-object p0
.end method

.method public mergeEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4347
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4348
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7100(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public setBinance(Lwallet/core/jni/proto/Binance$SigningInput$Builder;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4387
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7300(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public setBinance(Lwallet/core/jni/proto/Binance$SigningInput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7300(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-object p0
.end method

.method public setBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4291
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6700(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public setBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4282
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4283
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6700(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/THORChainSwap$Error$Builder;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4236
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4237
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6400(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/THORChainSwap$Error;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6400(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-object p0
.end method

.method public setEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7000(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public setEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$7000(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-object p0
.end method

.method public setFromChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$5900(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Chain;)V

    return-object p0
.end method

.method public setFromChainValue(I)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4083
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$5800(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;I)V

    return-object p0
.end method

.method public setToChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4175
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4176
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6200(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Chain;)V

    return-object p0
.end method

.method public setToChainValue(I)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4149
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4150
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->access$6100(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;I)V

    return-object p0
.end method
