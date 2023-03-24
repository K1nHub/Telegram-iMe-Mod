.class public final Lwallet/core/jni/proto/Binance$SendOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SendOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SendOrder;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5267
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8400()Lwallet/core/jni/proto/Binance$SendOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 5260
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$SendOrder$Builder;"
        }
    .end annotation

    .line 5392
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8800(Lwallet/core/jni/proto/Binance$SendOrder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$SendOrder$Builder;"
        }
    .end annotation

    .line 5542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9400(Lwallet/core/jni/proto/Binance$SendOrder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5380
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    .line 5379
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8700(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8700(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5366
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8600(Lwallet/core/jni/proto/Binance$SendOrder;Lwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/Binance$SendOrder$Input;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8600(Lwallet/core/jni/proto/Binance$SendOrder;Lwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5528
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5529
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5530
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    .line 5529
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9300(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5502
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5503
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9300(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5515
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5516
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9200(Lwallet/core/jni/proto/Binance$SendOrder;Lwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Binance$SendOrder$Output;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5489
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5490
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9200(Lwallet/core/jni/proto/Binance$SendOrder;Lwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-object p0
.end method

.method public clearInputs()Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8900(Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-object p0
.end method

.method public clearOutputs()Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1

    .line 5554
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9500(Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-object p0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Input;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->getInputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Input;

    move-result-object p1

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 5292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->getInputsCount()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
            ">;"
        }
    .end annotation

    .line 5280
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5281
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->getInputsList()Ljava/util/List;

    move-result-object v0

    .line 5280
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Output;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->getOutputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Output;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 5442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->getOutputsCount()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;"
        }
    .end annotation

    .line 5430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5431
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->getOutputsList()Ljava/util/List;

    move-result-object v0

    .line 5430
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeInputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9000(Lwallet/core/jni/proto/Binance$SendOrder;I)V

    return-object p0
.end method

.method public removeOutputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5566
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9600(Lwallet/core/jni/proto/Binance$SendOrder;I)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5326
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5328
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    .line 5327
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8500(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5313
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$8500(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5478
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    .line 5477
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9100(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
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

    .line 5463
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5464
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->access$9100(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-object p0
.end method
