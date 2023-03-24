.class public final Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$FA2ParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$FA2Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$FA2Parameters;",
        "Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$FA2ParametersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4775
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$8600()Lwallet/core/jni/proto/Tezos$FA2Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 4768
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTxsObject(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
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
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;)",
            "Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;"
        }
    .end annotation

    .line 4909
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9300(Lwallet/core/jni/proto/Tezos$FA2Parameters;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTxsObject(ILwallet/core/jni/proto/Tezos$TxObject$Builder;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
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

    .line 4899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    .line 4901
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tezos$TxObject;

    .line 4900
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9200(Lwallet/core/jni/proto/Tezos$FA2Parameters;ILwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public addTxsObject(ILwallet/core/jni/proto/Tezos$TxObject;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
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

    .line 4881
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4882
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9200(Lwallet/core/jni/proto/Tezos$FA2Parameters;ILwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public addTxsObject(Lwallet/core/jni/proto/Tezos$TxObject$Builder;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9100(Lwallet/core/jni/proto/Tezos$FA2Parameters;Lwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public addTxsObject(Lwallet/core/jni/proto/Tezos$TxObject;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9100(Lwallet/core/jni/proto/Tezos$FA2Parameters;Lwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public clearEntrypoint()Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1

    .line 4812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$8800(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-object p0
.end method

.method public clearTxsObject()Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1

    .line 4917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9400(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-object p0
.end method

.method public getEntrypoint()Ljava/lang/String;
    .locals 1

    .line 4785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getEntrypoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntrypointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4794
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getEntrypointBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTxsObject(I)Lwallet/core/jni/proto/Tezos$TxObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getTxsObject(I)Lwallet/core/jni/proto/Tezos$TxObject;

    move-result-object p1

    return-object p1
.end method

.method public getTxsObjectCount()I
    .locals 1

    .line 4841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getTxsObjectCount()I

    move-result v0

    return v0
.end method

.method public getTxsObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;"
        }
    .end annotation

    .line 4833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    .line 4834
    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getTxsObjectList()Ljava/util/List;

    move-result-object v0

    .line 4833
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeTxsObject(I)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4925
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9500(Lwallet/core/jni/proto/Tezos$FA2Parameters;I)V

    return-object p0
.end method

.method public setEntrypoint(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$8700(Lwallet/core/jni/proto/Tezos$FA2Parameters;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEntrypointBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4823
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4824
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$8900(Lwallet/core/jni/proto/Tezos$FA2Parameters;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTxsObject(ILwallet/core/jni/proto/Tezos$TxObject$Builder;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
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

    .line 4863
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    .line 4865
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tezos$TxObject;

    .line 4864
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9000(Lwallet/core/jni/proto/Tezos$FA2Parameters;ILwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public setTxsObject(ILwallet/core/jni/proto/Tezos$TxObject;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
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

    .line 4854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->access$9000(Lwallet/core/jni/proto/Tezos$FA2Parameters;ILwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method
