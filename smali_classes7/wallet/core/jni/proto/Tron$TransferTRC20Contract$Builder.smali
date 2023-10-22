.class public final Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TransferTRC20ContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$TransferTRC20Contract;",
        "Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TransferTRC20ContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1788
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2300()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 1781
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1

    .line 2034
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2035
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$3400(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1

    .line 1841
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2500(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1

    .line 1910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2800(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1

    .line 1979
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$3100(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$3300(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2400(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1856
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1857
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2600(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1897
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2700(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$2900(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1966
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$3000(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1994
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->access$3200(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
