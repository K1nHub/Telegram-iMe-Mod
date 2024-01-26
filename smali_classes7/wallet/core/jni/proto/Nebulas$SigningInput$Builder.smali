.class public final Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nebulas$SigningInput;",
        "Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 738
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$000()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nebulas$1;)V
    .locals 0

    .line 731
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 1075
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1076
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1600(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$500(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 792
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$200(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 966
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1100(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 926
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$900(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$700(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1170
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$2000(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 1224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1225
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$2300(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 1115
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1116
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1800(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1300(Lwallet/core/jni/proto/Nebulas$SigningInput;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getFromAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getTimestamp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1500(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChainId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 834
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$400(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$100(Lwallet/core/jni/proto/Nebulas$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$300(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1000(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$800(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$600(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1156
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1900(Lwallet/core/jni/proto/Nebulas$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayloadBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1185
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$2100(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1211
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1212
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$2200(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1700(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1008
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1200(Lwallet/core/jni/proto/Nebulas$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1036
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->access$1400(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
