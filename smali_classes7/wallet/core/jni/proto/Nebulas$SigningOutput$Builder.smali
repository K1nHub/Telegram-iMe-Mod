.class public final Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nebulas$SigningOutput;",
        "Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1612
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$2500()Lwallet/core/jni/proto/Nebulas$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nebulas$1;)V
    .locals 0

    .line 1605
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlgorithm()Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1

    .line 1651
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$2700(Lwallet/core/jni/proto/Nebulas$SigningOutput;)V

    return-object p0
.end method

.method public clearRaw()Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1

    .line 1745
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1746
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$3100(Lwallet/core/jni/proto/Nebulas$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1

    .line 1691
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1692
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$2900(Lwallet/core/jni/proto/Nebulas$SigningOutput;)V

    return-object p0
.end method

.method public getAlgorithm()I
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getRawBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAlgorithm(I)Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$2600(Lwallet/core/jni/proto/Nebulas$SigningOutput;I)V

    return-object p0
.end method

.method public setRaw(Ljava/lang/String;)Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$3000(Lwallet/core/jni/proto/Nebulas$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRawBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1760
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$3200(Lwallet/core/jni/proto/Nebulas$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1678
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1679
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->access$2800(Lwallet/core/jni/proto/Nebulas$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
