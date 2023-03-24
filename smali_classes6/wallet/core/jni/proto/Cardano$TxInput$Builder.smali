.class public final Lwallet/core/jni/proto/Cardano$TxInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$TxInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$TxInput;",
        "Lwallet/core/jni/proto/Cardano$TxInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1479
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TxInput;->access$1600()Lwallet/core/jni/proto/Cardano$TxInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 1472
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTokenAmount(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TxInput$Builder;"
        }
    .end annotation

    .line 1784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2800(Lwallet/core/jni/proto/Cardano$TxInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
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

    .line 1770
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 1772
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 1771
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2700(Lwallet/core/jni/proto/Cardano$TxInput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
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

    .line 1744
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2700(Lwallet/core/jni/proto/Cardano$TxInput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2600(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1731
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1732
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2600(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public clearAddress()Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1

    .line 1603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2100(Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1

    .line 1658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2400(Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public clearOutPoint()Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1

    .line 1549
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->access$1900(Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public clearTokenAmount()Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1

    .line 1796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2900(Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 1633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Cardano$OutPoint;
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getOutPoint()Lwallet/core/jni/proto/Cardano$OutPoint;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAmount(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->getTokenAmount(I)Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object p1

    return-object p1
.end method

.method public getTokenAmountCount()I
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getTokenAmountCount()I

    move-result v0

    return v0
.end method

.method public getTokenAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 1672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 1673
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getTokenAmountList()Ljava/util/List;

    move-result-object v0

    .line 1672
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->hasOutPoint()Z

    move-result v0

    return v0
.end method

.method public mergeOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$1800(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-object p0
.end method

.method public removeTokenAmount(I)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$3000(Lwallet/core/jni/proto/Cardano$TxInput;I)V

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2000(Lwallet/core/jni/proto/Cardano$TxInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2200(Lwallet/core/jni/proto/Cardano$TxInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1645
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2300(Lwallet/core/jni/proto/Cardano$TxInput;J)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint$Builder;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$1700(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->access$1700(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-object p0
.end method

.method public setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
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

    .line 1718
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1719
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 1720
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 1719
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2500(Lwallet/core/jni/proto/Cardano$TxInput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
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

    .line 1705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->access$2500(Lwallet/core/jni/proto/Cardano$TxInput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method
