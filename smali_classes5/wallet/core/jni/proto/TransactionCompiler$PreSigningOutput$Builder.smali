.class public final Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TransactionCompiler.java"

# interfaces
.implements Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;",
        "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 393
    invoke-static {}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$000()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/TransactionCompiler$1;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$400(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V

    return-object p0
.end method

.method public clearDataHash()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$200(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$700(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V

    return-object p0
.end method

.method public clearErrorMessage()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$900(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDataHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getDataHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$300(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDataHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$100(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$600(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$800(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$1000(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->access$500(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;I)V

    return-object p0
.end method
