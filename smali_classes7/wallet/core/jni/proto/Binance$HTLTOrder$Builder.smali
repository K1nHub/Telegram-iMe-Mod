.class public final Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$HTLTOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$HTLTOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$HTLTOrder;",
        "Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$HTLTOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9377
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$14800()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 9370
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmount(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;"
        }
    .end annotation

    .line 9800
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9801
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16600(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
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

    .line 9786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    .line 9788
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 9787
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16500(Lwallet/core/jni/proto/Binance$HTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
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

    .line 9760
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16500(Lwallet/core/jni/proto/Binance$HTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16400(Lwallet/core/jni/proto/Binance$HTLTOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9747
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16400(Lwallet/core/jni/proto/Binance$HTLTOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16700(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearCrossChain()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9973
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9974
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$17500(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearExpectedIncome()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9878
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$17000(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15000(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearHeightSpan()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9933
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$17300(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearRandomNumberHash()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9634
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9635
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16000(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearRecipientOtherChain()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15400(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearSenderOtherChain()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15700(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16200(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15200(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-object p0
.end method

.method public getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9710
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object p1

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 9700
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getAmountCount()I

    move-result v0

    return v0
.end method

.method public getAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 9688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    .line 9689
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getAmountList()Ljava/util/List;

    move-result-object v0

    .line 9688
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCrossChain()Z
    .locals 1

    .line 9948
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getCrossChain()Z

    move-result v0

    return v0
.end method

.method public getExpectedIncome()Ljava/lang/String;
    .locals 1

    .line 9839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getExpectedIncome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedIncomeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getExpectedIncomeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHeightSpan()J
    .locals 2

    .line 9908
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getHeightSpan()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRandomNumberHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getRandomNumberHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientOtherChain()Ljava/lang/String;
    .locals 1

    .line 9471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getRecipientOtherChain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientOtherChainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getRecipientOtherChainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderOtherChain()Ljava/lang/String;
    .locals 1

    .line 9540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getSenderOtherChain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderOtherChainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getSenderOtherChainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 9649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9431
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getTo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAmount(I)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16800(Lwallet/core/jni/proto/Binance$HTLTOrder;I)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
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

    .line 9734
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    .line 9736
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 9735
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16300(Lwallet/core/jni/proto/Binance$HTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
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

    .line 9721
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16300(Lwallet/core/jni/proto/Binance$HTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setCrossChain(Z)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9960
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9961
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$17400(Lwallet/core/jni/proto/Binance$HTLTOrder;Z)V

    return-object p0
.end method

.method public setExpectedIncome(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16900(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExpectedIncomeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$17100(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$14900(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHeightSpan(J)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$17200(Lwallet/core/jni/proto/Binance$HTLTOrder;J)V

    return-object p0
.end method

.method public setRandomNumberHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9621
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15900(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientOtherChain(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15300(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientOtherChainBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15500(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderOtherChain(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9566
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15600(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderOtherChainBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15800(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9661
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9662
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$16100(Lwallet/core/jni/proto/Binance$HTLTOrder;J)V

    return-object p0
.end method

.method public setTo(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9443
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->access$15100(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
