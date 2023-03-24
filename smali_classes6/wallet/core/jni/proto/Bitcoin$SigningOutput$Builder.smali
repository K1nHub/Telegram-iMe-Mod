.class public final Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$SigningOutput;",
        "Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6774
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$10900()Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 6767
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1

    .line 6884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11400(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1

    .line 7019
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7020
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$12000(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V

    return-object p0
.end method

.method public clearErrorMessage()Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1

    .line 7073
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7074
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$12200(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V

    return-object p0
.end method

.method public clearTransaction()Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1

    .line 6844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11200(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V

    return-object p0
.end method

.method public clearTransactionId()Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1

    .line 6938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11600(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 6994
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 7034
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7047
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 6968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Bitcoin$Transaction;
    .locals 1

    .line 6798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getTransaction()Lwallet/core/jni/proto/Bitcoin$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 6899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getTransactionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 6787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6834
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11100(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6871
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6872
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11300(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7006
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11900(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$12100(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7088
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$12300(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6980
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6981
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11800(Lwallet/core/jni/proto/Bitcoin$SigningOutput;I)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11000(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11000(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6925
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11500(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransactionIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6954
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->access$11700(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
