.class public final Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$SigningOutput;",
        "Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10229
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$17700()Lwallet/core/jni/proto/Nervos$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 10222
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1

    .line 10432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18600(Lwallet/core/jni/proto/Nervos$SigningOutput;)V

    return-object p0
.end method

.method public clearTransactionId()Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1

    .line 10351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18200(Lwallet/core/jni/proto/Nervos$SigningOutput;)V

    return-object p0
.end method

.method public clearTransactionJson()Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1

    .line 10282
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10283
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$17900(Lwallet/core/jni/proto/Nervos$SigningOutput;)V

    return-object p0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 10407
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 10381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 10312
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getTransactionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionJson()Ljava/lang/String;
    .locals 1

    .line 10243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getTransactionJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getTransactionJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18500(Lwallet/core/jni/proto/Nervos$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10393
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10394
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18400(Lwallet/core/jni/proto/Nervos$SigningOutput;I)V

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10338
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10339
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18100(Lwallet/core/jni/proto/Nervos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransactionIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18300(Lwallet/core/jni/proto/Nervos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransactionJson(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10269
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10270
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$17800(Lwallet/core/jni/proto/Nervos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransactionJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10297
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->access$18000(Lwallet/core/jni/proto/Nervos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
