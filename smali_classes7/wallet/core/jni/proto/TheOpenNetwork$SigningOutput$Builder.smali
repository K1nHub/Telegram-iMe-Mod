.class public final Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TheOpenNetwork.java"

# interfaces
.implements Lwallet/core/jni/proto/TheOpenNetwork$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2069
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$2700()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/TheOpenNetwork$1;)V
    .locals 0

    .line 2062
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$2900(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1

    .line 2203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3300(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)V

    return-object p0
.end method

.method public clearErrorMessage()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1

    .line 2257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3500(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 2152
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public setEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$2800(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3000(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2190
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3200(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2244
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3400(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3600(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->access$3100(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;I)V

    return-object p0
.end method
