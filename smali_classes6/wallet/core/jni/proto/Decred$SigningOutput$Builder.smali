.class public final Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Decred$SigningOutput;",
        "Lwallet/core/jni/proto/Decred$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2864
    invoke-static {}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$4500()Lwallet/core/jni/proto/Decred$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Decred$1;)V
    .locals 0

    .line 2857
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1

    .line 2974
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5000(Lwallet/core/jni/proto/Decred$SigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1

    .line 3109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5600(Lwallet/core/jni/proto/Decred$SigningOutput;)V

    return-object p0
.end method

.method public clearTransaction()Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1

    .line 2934
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2935
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$4800(Lwallet/core/jni/proto/Decred$SigningOutput;)V

    return-object p0
.end method

.method public clearTransactionId()Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1

    .line 3028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5200(Lwallet/core/jni/proto/Decred$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 3084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 3058
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Decred$Transaction;
    .locals 1

    .line 2888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getTransaction()Lwallet/core/jni/proto/Decred$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 2989
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getTransactionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 2877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeTransaction(Lwallet/core/jni/proto/Decred$Transaction;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2923
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$4700(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$4900(Lwallet/core/jni/proto/Decred$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5500(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3070
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5400(Lwallet/core/jni/proto/Decred$SigningOutput;I)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Decred$Transaction$Builder;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$4600(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Decred$Transaction;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$4600(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3015
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3016
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5100(Lwallet/core/jni/proto/Decred$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransactionIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3043
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3044
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->access$5300(Lwallet/core/jni/proto/Decred$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
