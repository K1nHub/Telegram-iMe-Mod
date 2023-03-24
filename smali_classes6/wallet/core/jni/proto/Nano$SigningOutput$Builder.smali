.class public final Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nano.java"

# interfaces
.implements Lwallet/core/jni/proto/Nano$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nano$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nano$SigningOutput;",
        "Lwallet/core/jni/proto/Nano$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nano$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1542
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2100()Lwallet/core/jni/proto/Nano$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nano$1;)V
    .locals 0

    .line 1535
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBlockHash()Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
    .locals 1

    .line 1621
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2500(Lwallet/core/jni/proto/Nano$SigningOutput;)V

    return-object p0
.end method

.method public clearJson()Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1676
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2700(Lwallet/core/jni/proto/Nano$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
    .locals 1

    .line 1581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2300(Lwallet/core/jni/proto/Nano$SigningOutput;)V

    return-object p0
.end method

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBlockHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2400(Lwallet/core/jni/proto/Nano$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1663
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2600(Lwallet/core/jni/proto/Nano$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2800(Lwallet/core/jni/proto/Nano$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1568
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1569
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningOutput;->access$2200(Lwallet/core/jni/proto/Nano$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
