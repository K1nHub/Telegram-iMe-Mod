.class public final Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$THORChainSendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;",
        "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$THORChainSendOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8741
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15300()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 8734
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmounts(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;)",
            "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;"
        }
    .end annotation

    .line 8882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$16100(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmounts(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 8872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    .line 8874
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 8873
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$16000(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$16000(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8863
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15900(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15900(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public clearAmounts()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1

    .line 8890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$16200(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1

    .line 8768
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15500(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1

    .line 8796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15700(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-object p0
.end method

.method public getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object p1

    return-object p1
.end method

.method public getAmountsCount()I
    .locals 1

    .line 8814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getAmountsCount()I

    move-result v0

    return v0
.end method

.method public getAmountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 8806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    .line 8807
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getAmountsList()Ljava/util/List;

    move-result-object v0

    .line 8806
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getToAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAmounts(I)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$16300(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;I)V

    return-object p0
.end method

.method public setAmounts(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 8836
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8837
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    .line 8838
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 8837
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15800(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8827
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8828
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15800(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setFromAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8759
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15400(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8787
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8788
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->access$15600(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
