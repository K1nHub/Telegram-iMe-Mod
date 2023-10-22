.class public final Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$SigningOutput;",
        "Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5008
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$8700()Lwallet/core/jni/proto/MultiversX$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 5001
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
    .locals 1

    .line 5045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$8900(Lwallet/core/jni/proto/MultiversX$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
    .locals 1

    .line 5094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5095
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$9200(Lwallet/core/jni/proto/MultiversX$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 5018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5027
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->getEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 5067
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5076
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5036
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5037
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$8800(Lwallet/core/jni/proto/MultiversX$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5056
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5057
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$9000(Lwallet/core/jni/proto/MultiversX$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$9100(Lwallet/core/jni/proto/MultiversX$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningOutput;->access$9300(Lwallet/core/jni/proto/MultiversX$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
