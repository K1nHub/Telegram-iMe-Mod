.class public final Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$RevealOperationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$RevealOperationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$RevealOperationData;",
        "Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$RevealOperationDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6095
    invoke-static {}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->access$11600()Lwallet/core/jni/proto/Tezos$RevealOperationData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 6088
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPublicKey()Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;
    .locals 1

    .line 6122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->access$11800(Lwallet/core/jni/proto/Tezos$RevealOperationData;)V

    return-object p0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->access$11700(Lwallet/core/jni/proto/Tezos$RevealOperationData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
