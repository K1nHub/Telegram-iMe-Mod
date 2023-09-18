.class public final Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ontology.java"

# interfaces
.implements Lwallet/core/jni/proto/Ontology$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ontology$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ontology$SigningInput;",
        "Lwallet/core/jni/proto/Ontology$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ontology$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 768
    invoke-static {}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$000()Lwallet/core/jni/proto/Ontology$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ontology$1;)V
    .locals 0

    .line 761
    invoke-direct {p0}, Lwallet/core/jni/proto/Ontology$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 1054
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1300(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearContract()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$200(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1900(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1700(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearMethod()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$500(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 1283
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$2400(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearOwnerPrivateKey()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$800(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearPayerPrivateKey()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1500(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearQueryAddress()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 1228
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1229
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$2100(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1

    .line 999
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1000
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1000(Lwallet/core/jni/proto/Ontology$SigningInput;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContract()Ljava/lang/String;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getContract()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getContractBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPrice()J
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getGasPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getNonce()I

    move-result v0

    return v0
.end method

.method public getOwnerPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getOwnerPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayerPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getPayerPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryAddress()Ljava/lang/String;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getQueryAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getQueryAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1200(Lwallet/core/jni/proto/Ontology$SigningInput;J)V

    return-object p0
.end method

.method public setContract(Ljava/lang/String;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$100(Lwallet/core/jni/proto/Ontology$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 836
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 837
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$300(Lwallet/core/jni/proto/Ontology$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1162
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1800(Lwallet/core/jni/proto/Ontology$SigningInput;J)V

    return-object p0
.end method

.method public setGasPrice(J)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1121
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1122
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1600(Lwallet/core/jni/proto/Ontology$SigningInput;J)V

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$400(Lwallet/core/jni/proto/Ontology$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMethodBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$600(Lwallet/core/jni/proto/Ontology$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(I)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1270
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$2300(Lwallet/core/jni/proto/Ontology$SigningInput;I)V

    return-object p0
.end method

.method public setOwnerPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 932
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 933
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$700(Lwallet/core/jni/proto/Ontology$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayerPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1082
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1400(Lwallet/core/jni/proto/Ontology$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setQueryAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1216
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$2000(Lwallet/core/jni/proto/Ontology$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setQueryAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1243
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1244
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$2200(Lwallet/core/jni/proto/Ontology$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$900(Lwallet/core/jni/proto/Ontology$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningInput;->access$1100(Lwallet/core/jni/proto/Ontology$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
