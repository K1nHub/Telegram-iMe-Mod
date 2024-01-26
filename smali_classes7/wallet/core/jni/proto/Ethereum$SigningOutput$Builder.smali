.class public final Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$SigningOutput;",
        "Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7197
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12100()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 7190
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7372
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7373
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13100(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public clearEncoded()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7236
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7237
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12300(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7438
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7439
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13400(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public clearErrorMessage()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13600(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public clearR()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7304
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7305
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12700(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public clearS()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12900(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public clearV()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7276
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7277
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12500(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 7413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 7453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 7387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getR()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7287
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getR()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getS()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getS()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getV()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7251
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getV()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7359
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13000(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12200(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7425
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7426
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13300(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7479
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13500(Lwallet/core/jni/proto/Ethereum$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7507
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13700(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$13200(Lwallet/core/jni/proto/Ethereum$SigningOutput;I)V

    return-object p0
.end method

.method public setR(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7295
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7296
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12600(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setS(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7323
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12800(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setV(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7263
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7264
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->access$12400(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
