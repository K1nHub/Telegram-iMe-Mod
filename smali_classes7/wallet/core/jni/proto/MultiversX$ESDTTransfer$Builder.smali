.class public final Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$ESDTTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$ESDTTransfer;",
        "Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$ESDTTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1747
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2300()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 1740
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccounts()Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1

    .line 1817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2600(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1

    .line 1940
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$3100(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-object p0
.end method

.method public clearTokenIdentifier()Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1

    .line 1871
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1872
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2800(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-object p0
.end method

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenIdentifier()Ljava/lang/String;
    .locals 1

    .line 1832
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getTokenIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getTokenIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->hasAccounts()Z

    move-result v0

    return v0
.end method

.method public mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2500(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts$Builder;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1794
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2400(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1781
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2400(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$3000(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1955
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$3200(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenIdentifier(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2700(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenIdentifierBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->access$2900(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
