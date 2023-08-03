.class public final Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$SigningOutput;",
        "Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10073
    invoke-static {}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17300()Lwallet/core/jni/proto/Cardano$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 10066
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1

    .line 10112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17500(Lwallet/core/jni/proto/Cardano$SigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1

    .line 10218
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10219
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$18000(Lwallet/core/jni/proto/Cardano$SigningOutput;)V

    return-object p0
.end method

.method public clearTxId()Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1

    .line 10152
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10153
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17700(Lwallet/core/jni/proto/Cardano$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 10193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 10167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getTxId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getTxId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10099
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17400(Lwallet/core/jni/proto/Cardano$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10205
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17900(Lwallet/core/jni/proto/Cardano$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10179
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17800(Lwallet/core/jni/proto/Cardano$SigningOutput;I)V

    return-object p0
.end method

.method public setTxId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10139
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->access$17600(Lwallet/core/jni/proto/Cardano$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
