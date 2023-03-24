.class public final Lwallet/core/jni/proto/Nebulas$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nebulas$Data;",
        "Lwallet/core/jni/proto/Nebulas$Data$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$DataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2049
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$Data;->access$3400()Lwallet/core/jni/proto/Nebulas$Data;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nebulas$1;)V
    .locals 0

    .line 2042
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$Data$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPayload()Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1

    .line 2125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$Data;->access$3900(Lwallet/core/jni/proto/Nebulas$Data;)V

    return-object p0
.end method

.method public clearType()Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1

    .line 2086
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$Data;->access$3600(Lwallet/core/jni/proto/Nebulas$Data;)V

    return-object p0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$Data;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 2059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$Data;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$Data;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$Data;->access$3800(Lwallet/core/jni/proto/Nebulas$Data;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2077
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$Data;->access$3500(Lwallet/core/jni/proto/Nebulas$Data;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2097
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$Data;->access$3700(Lwallet/core/jni/proto/Nebulas$Data;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
