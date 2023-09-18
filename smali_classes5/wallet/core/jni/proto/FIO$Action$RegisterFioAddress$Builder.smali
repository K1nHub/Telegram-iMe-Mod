.class public final Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$RegisterFioAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;",
        "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddressOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2069
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$2800()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 2062
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFee()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1

    .line 2246
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2247
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3600(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-object p0
.end method

.method public clearFioAddress()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3000(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-object p0
.end method

.method public clearOwnerFioPublicKey()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1

    .line 2191
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2192
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3300(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-object p0
.end method

.method public getFee()J
    .locals 2

    .line 2221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFioAddress()Ljava/lang/String;
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getFioAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getFioAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerFioPublicKey()Ljava/lang/String;
    .locals 1

    .line 2152
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getOwnerFioPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerFioPublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getOwnerFioPublicKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFee(J)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3500(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;J)V

    return-object p0
.end method

.method public setFioAddress(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$2900(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFioAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3100(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOwnerFioPublicKey(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2178
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2179
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3200(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerFioPublicKeyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->access$3400(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
