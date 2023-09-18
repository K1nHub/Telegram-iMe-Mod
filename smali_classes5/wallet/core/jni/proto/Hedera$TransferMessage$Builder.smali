.class public final Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$TransferMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Hedera$TransferMessage;",
        "Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TransferMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1471
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$1800()Lwallet/core/jni/proto/Hedera$TransferMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Hedera$1;)V
    .locals 0

    .line 1464
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1

    .line 1648
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2600(Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1

    .line 1524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2000(Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1

    .line 1593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1594
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2300(Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1635
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1636
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2500(Lwallet/core/jni/proto/Hedera$TransferMessage;J)V

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1511
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1512
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$1900(Lwallet/core/jni/proto/Hedera$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1539
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2100(Lwallet/core/jni/proto/Hedera$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1580
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1581
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2200(Lwallet/core/jni/proto/Hedera$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1608
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->access$2400(Lwallet/core/jni/proto/Hedera$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
