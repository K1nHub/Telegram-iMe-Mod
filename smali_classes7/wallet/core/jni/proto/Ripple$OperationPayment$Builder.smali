.class public final Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationPaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$OperationPayment;",
        "Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationPaymentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1411
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$1600()Lwallet/core/jni/proto/Ripple$OperationPayment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 1404
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1

    .line 1458
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1459
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$1900(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public clearAmountOneof()Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1

    .line 1421
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$1700(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public clearCurrencyAmount()Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1

    .line 1506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2200(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public clearDestination()Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1

    .line 1560
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1561
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2400(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public clearDestinationTag()Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1616
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2700(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAmountOneofCase()Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getAmountOneofCase()Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getCurrencyAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 1521
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationTag()J
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDestinationTag()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public hasCurrencyAmount()Z
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->hasCurrencyAmount()Z

    move-result v0

    return v0
.end method

.method public mergeCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1498
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2100(Lwallet/core/jni/proto/Ripple$OperationPayment;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$1800(Lwallet/core/jni/proto/Ripple$OperationPayment;J)V

    return-object p0
.end method

.method public setCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2000(Lwallet/core/jni/proto/Ripple$OperationPayment;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public setCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2000(Lwallet/core/jni/proto/Ripple$OperationPayment;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1547
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2300(Lwallet/core/jni/proto/Ripple$OperationPayment;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1575
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1576
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2500(Lwallet/core/jni/proto/Ripple$OperationPayment;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDestinationTag(J)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1602
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1603
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ripple$OperationPayment;->access$2600(Lwallet/core/jni/proto/Ripple$OperationPayment;J)V

    return-object p0
.end method
