.class public final Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$ContractCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$ContractCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$ContractCall;",
        "Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$ContractCallOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6755
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$12500()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 6748
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1

    .line 6808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$12700(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public clearContract()Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1

    .line 6877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$13000(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1

    .line 6932
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6933
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$13300(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 6769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContract()Ljava/lang/String;
    .locals 1

    .line 6838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getContract()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getContractBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6795
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$12600(Lwallet/core/jni/proto/IoTeX$ContractCall;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6823
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6824
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$12800(Lwallet/core/jni/proto/IoTeX$ContractCall;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setContract(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$12900(Lwallet/core/jni/proto/IoTeX$ContractCall;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$13100(Lwallet/core/jni/proto/IoTeX$ContractCall;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ContractCall;->access$13200(Lwallet/core/jni/proto/IoTeX$ContractCall;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
