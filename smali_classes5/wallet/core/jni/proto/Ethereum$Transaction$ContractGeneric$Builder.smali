.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ContractGenericOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ContractGenericOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3038
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->access$4400()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 3031
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;
    .locals 1

    .line 3077
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->access$4600(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;
    .locals 1

    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3118
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->access$4800(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3092
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3064
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3065
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->access$4500(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3104
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->access$4700(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
