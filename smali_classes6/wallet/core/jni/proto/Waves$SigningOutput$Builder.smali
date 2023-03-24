.class public final Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Waves$SigningOutput;",
        "Lwallet/core/jni/proto/Waves$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2923
    invoke-static {}, Lwallet/core/jni/proto/Waves$SigningOutput;->access$4900()Lwallet/core/jni/proto/Waves$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Waves$1;)V
    .locals 0

    .line 2916
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearJson()Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1

    .line 3016
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3017
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->access$5300(Lwallet/core/jni/proto/Waves$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1

    .line 2962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->access$5100(Lwallet/core/jni/proto/Waves$SigningOutput;)V

    return-object p0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 2977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2937
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3003
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningOutput;->access$5200(Lwallet/core/jni/proto/Waves$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3031
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3032
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningOutput;->access$5400(Lwallet/core/jni/proto/Waves$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningOutput;->access$5000(Lwallet/core/jni/proto/Waves$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
