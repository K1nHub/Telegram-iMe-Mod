.class public final Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$DepositHTLTOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$DepositHTLTOrder;",
        "Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$DepositHTLTOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10441
    invoke-static {}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$17700()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 10434
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmount(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
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
            "Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;"
        }
    .end annotation

    .line 10606
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10607
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18300(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
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

    .line 10592
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10593
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    .line 10594
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 10593
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18200(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
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

    .line 10566
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18200(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18100(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18100(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1

    .line 10618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18400(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1

    .line 10480
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10481
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$17900(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-object p0
.end method

.method public clearSwapId()Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1

    .line 10670
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18700(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

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

    .line 10516
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object p1

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 10506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getAmountCount()I

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

    .line 10494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    .line 10495
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getAmountList()Ljava/util/List;

    move-result-object v0

    .line 10494
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10455
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwapId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10645
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getSwapId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAmount(I)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18500(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;I)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
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

    .line 10540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    .line 10542
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 10541
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18000(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
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

    .line 10527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18000(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10467
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$17800(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSwapId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10657
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10658
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->access$18600(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
