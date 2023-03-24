.class public final Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EOS.java"

# interfaces
.implements Lwallet/core/jni/proto/EOS$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/EOS$SigningOutput;",
        "Lwallet/core/jni/proto/EOS$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/EOS$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2408
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$3700()Lwallet/core/jni/proto/EOS$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/EOS$1;)V
    .locals 0

    .line 2401
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1

    .line 2542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$4300(Lwallet/core/jni/proto/EOS$SigningOutput;)V

    return-object p0
.end method

.method public clearJsonEncoded()Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1

    .line 2461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$3900(Lwallet/core/jni/proto/EOS$SigningOutput;)V

    return-object p0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 2517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 2491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getJsonEncoded()Ljava/lang/String;
    .locals 1

    .line 2422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->getJsonEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->getJsonEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2529
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2530
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$4200(Lwallet/core/jni/proto/EOS$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2503
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$4100(Lwallet/core/jni/proto/EOS$SigningOutput;I)V

    return-object p0
.end method

.method public setJsonEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2448
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2449
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$3800(Lwallet/core/jni/proto/EOS$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->access$4000(Lwallet/core/jni/proto/EOS$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
