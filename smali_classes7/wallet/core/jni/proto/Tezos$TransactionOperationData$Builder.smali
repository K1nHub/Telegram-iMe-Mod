.class public final Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$TransactionOperationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$TransactionOperationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$TransactionOperationData;",
        "Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$TransactionOperationDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5741
    invoke-static {}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$10600()Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 5734
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1

    .line 5817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$11100(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-object p0
.end method

.method public clearDestination()Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1

    .line 5778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$10800(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-object p0
.end method

.method public clearParameters()Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1

    .line 5864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$11400(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 5800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 5751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lwallet/core/jni/proto/Tezos$OperationParameters;
    .locals 1

    .line 5834
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getParameters()Lwallet/core/jni/proto/Tezos$OperationParameters;

    move-result-object v0

    return-object v0
.end method

.method public hasParameters()Z
    .locals 1

    .line 5827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->hasParameters()Z

    move-result v0

    return v0
.end method

.method public mergeParameters(Lwallet/core/jni/proto/Tezos$OperationParameters;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5858
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$11300(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$11000(Lwallet/core/jni/proto/Tezos$TransactionOperationData;J)V

    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5769
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$10700(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$10900(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParameters(Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5849
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$11200(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-object p0
.end method

.method public setParameters(Lwallet/core/jni/proto/Tezos$OperationParameters;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->access$11200(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-object p0
.end method
