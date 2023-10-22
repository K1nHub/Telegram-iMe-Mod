.class public final Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$SigningOutput;",
        "Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20691
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39000()Lwallet/core/jni/proto/Cosmos$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 20684
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1

    .line 20927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$40000(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V

    return-object p0
.end method

.method public clearJson()Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1

    .line 20784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39400(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V

    return-object p0
.end method

.method public clearSerialized()Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1

    .line 20857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20858
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39700(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39200(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V

    return-object p0
.end method

.method public clearSignatureJson()Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1

    .line 20996
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20997
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$40300(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V

    return-object p0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 20888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20901
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 20745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerialized()Ljava/lang/String;
    .locals 1

    .line 20815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSerialized()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSerializedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20705
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureJson()Ljava/lang/String;
    .locals 1

    .line 20957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSignatureJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSignatureJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setError(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39900(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$40100(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39300(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20799
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39500(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSerialized(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20843
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20844
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39600(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSerializedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39800(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$39100(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignatureJson(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20983
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$40200(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21011
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 21012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->access$40400(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
