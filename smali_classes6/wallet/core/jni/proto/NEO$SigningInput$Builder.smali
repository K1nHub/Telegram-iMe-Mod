.class public final Lwallet/core/jni/proto/NEO$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEO$SigningInput;",
        "Lwallet/core/jni/proto/NEO$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2185
    invoke-static {}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2400()Lwallet/core/jni/proto/NEO$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEO$1;)V
    .locals 0

    .line 2178
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;)",
            "Lwallet/core/jni/proto/NEO$SigningInput$Builder;"
        }
    .end annotation

    .line 2310
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2800(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;)",
            "Lwallet/core/jni/proto/NEO$SigningInput$Builder;"
        }
    .end annotation

    .line 2460
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2461
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3400(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/NEO$TransactionInput$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2296
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2298
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionInput;

    .line 2297
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2700(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2270
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2700(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/NEO$TransactionInput$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2283
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2600(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2600(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2448
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionOutput;

    .line 2447
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3300(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3300(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2433
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3200(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2407
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2408
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3200(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2564
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2565
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4000(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public clearGasAssetId()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4200(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public clearGasChangeAddress()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2687
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4500(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public clearInputs()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2322
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2900(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public clearOutputs()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3500(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public clearPlan()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4900(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3800(Lwallet/core/jni/proto/NEO$SigningInput;)V

    return-object p0
.end method

.method public getFee()J
    .locals 2

    .line 2539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasAssetId()Ljava/lang/String;
    .locals 1

    .line 2579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getGasAssetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGasAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getGasAssetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasChangeAddress()Ljava/lang/String;
    .locals 1

    .line 2648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getGasChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGasChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getGasChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/NEO$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2220
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->getInputs(I)Lwallet/core/jni/proto/NEO$TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 2210
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getInputsCount()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2199
    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getInputsList()Ljava/util/List;

    move-result-object v0

    .line 2198
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutput;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 2360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getOutputsCount()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 2348
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2349
    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getOutputsList()Ljava/util/List;

    move-result-object v0

    .line 2348
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1

    .line 2727
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getPlan()Lwallet/core/jni/proto/NEO$TransactionPlan;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 2716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->hasPlan()Z

    move-result v0

    return v0
.end method

.method public mergePlan(Lwallet/core/jni/proto/NEO$TransactionPlan;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4800(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public removeInputs(I)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2334
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3000(Lwallet/core/jni/proto/NEO$SigningInput;I)V

    return-object p0
.end method

.method public removeOutputs(I)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2484
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2485
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3600(Lwallet/core/jni/proto/NEO$SigningInput;I)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2551
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2552
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3900(Lwallet/core/jni/proto/NEO$SigningInput;J)V

    return-object p0
.end method

.method public setGasAssetId(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2606
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4100(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGasAssetIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4300(Lwallet/core/jni/proto/NEO$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4400(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGasChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4600(Lwallet/core/jni/proto/NEO$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/NEO$TransactionInput$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2244
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2246
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionInput;

    .line 2245
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2500(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2231
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2232
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$2500(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2394
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2396
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionOutput;

    .line 2395
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3100(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
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

    .line 2381
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3100(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4700(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/NEO$TransactionPlan;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$4700(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2511
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2512
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->access$3700(Lwallet/core/jni/proto/NEO$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
