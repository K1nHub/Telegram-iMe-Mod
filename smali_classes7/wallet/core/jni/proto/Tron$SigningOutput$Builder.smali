.class public final Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$SigningOutput;",
        "Lwallet/core/jni/proto/Tron$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14079
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25300()Lwallet/core/jni/proto/Tron$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 14072
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearId()Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1

    .line 14118
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14119
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25500(Lwallet/core/jni/proto/Tron$SigningOutput;)V

    return-object p0
.end method

.method public clearJson()Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1

    .line 14268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$26300(Lwallet/core/jni/proto/Tron$SigningOutput;)V

    return-object p0
.end method

.method public clearRefBlockBytes()Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1

    .line 14186
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25900(Lwallet/core/jni/proto/Tron$SigningOutput;)V

    return-object p0
.end method

.method public clearRefBlockHash()Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1

    .line 14214
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14215
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$26100(Lwallet/core/jni/proto/Tron$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1

    .line 14158
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25700(Lwallet/core/jni/proto/Tron$SigningOutput;)V

    return-object p0
.end method

.method public getId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14093
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 14229
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefBlockBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getRefBlockBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getRefBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25400(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$26200(Lwallet/core/jni/proto/Tron$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14283
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$26400(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRefBlockBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25800(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRefBlockHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14205
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$26000(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->access$25600(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
