.class public final Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$TokenTransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$TokenTransferMessage;",
        "Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$TokenTransferMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1448
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$1800()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 1441
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1

    .line 1556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2300(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-object p0
.end method

.method public clearFunction()Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1

    .line 1627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2600(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1

    .line 1501
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2000(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFunction()Lwallet/core/jni/proto/Aptos$StructTag;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getFunction()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasFunction()Z
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->hasFunction()Z

    move-result v0

    return v0
.end method

.method public mergeFunction(Lwallet/core/jni/proto/Aptos$StructTag;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1616
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2500(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1543
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1544
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2200(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;J)V

    return-object p0
.end method

.method public setFunction(Lwallet/core/jni/proto/Aptos$StructTag$Builder;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1604
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1605
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2400(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public setFunction(Lwallet/core/jni/proto/Aptos$StructTag;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2400(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1489
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$1900(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->access$2100(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
