.class public final Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$SigningOutput;",
        "Lwallet/core/jni/proto/Solana$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8903
    invoke-static {}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$15600()Lwallet/core/jni/proto/Solana$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 8896
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1

    .line 8956
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$15800(Lwallet/core/jni/proto/Solana$SigningOutput;)V

    return-object p0
.end method

.method public clearUnsignedTx()Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1

    .line 9025
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9026
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$16100(Lwallet/core/jni/proto/Solana$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 8917
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8930
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->getEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedTx()Ljava/lang/String;
    .locals 1

    .line 8986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->getUnsignedTx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedTxBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->getUnsignedTxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8943
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8944
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$15700(Lwallet/core/jni/proto/Solana$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8971
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$15900(Lwallet/core/jni/proto/Solana$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnsignedTx(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9012
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9013
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$16000(Lwallet/core/jni/proto/Solana$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUnsignedTxBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9041
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->access$16200(Lwallet/core/jni/proto/Solana$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
