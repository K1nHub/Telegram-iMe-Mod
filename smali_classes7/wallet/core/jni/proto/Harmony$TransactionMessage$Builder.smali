.class public final Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$TransactionMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$TransactionMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$TransactionMessage;",
        "Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$TransactionMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1713
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2300()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 1706
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1941
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1942
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3400(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearFromShardId()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 2021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3800(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1832
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2900(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2700(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1752
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2500(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1981
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1982
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3600(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3100(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public clearToShardId()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 2061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$4000(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromShardId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getFromShardId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1727
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToShardId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2036
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getToShardId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1928
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1929
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3300(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromShardId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2008
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2009
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3700(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1819
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2800(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2600(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1739
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$2400(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1968
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1969
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3500(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3000(Lwallet/core/jni/proto/Harmony$TransactionMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1901
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1902
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3200(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToShardId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2048
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2049
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->access$3900(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
