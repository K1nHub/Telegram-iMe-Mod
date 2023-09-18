.class public final Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Zilliqa$SigningInput;",
        "Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1756
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2100()Lwallet/core/jni/proto/Zilliqa$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Zilliqa$1;)V
    .locals 0

    .line 1749
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGasLimit()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 1984
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3200(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 1944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3000(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 1835
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2500(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 2024
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2025
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3400(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1890
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2700(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public clearTransaction()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 2095
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3700(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 1795
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2300(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V

    return-object p0
.end method

.method public getGasLimit()J
    .locals 2

    .line 1959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 1810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction;
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2084
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2085
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3600(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1971
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3100(Lwallet/core/jni/proto/Zilliqa$SigningInput;J)V

    return-object p0
.end method

.method public setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2900(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2400(Lwallet/core/jni/proto/Zilliqa$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2011
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3300(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2600(Lwallet/core/jni/proto/Zilliqa$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2800(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3500(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2059
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2060
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$3500(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1782
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->access$2200(Lwallet/core/jni/proto/Zilliqa$SigningInput;I)V

    return-object p0
.end method
