.class public final Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$TransactionPlan;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionPlanOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5724
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$8600()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 5717
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUtxos(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;)",
            "Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;"
        }
    .end annotation

    .line 6009
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6010
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9800(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
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

    .line 5995
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    .line 5997
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    .line 5996
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public addUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
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

    .line 5969
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public addUtxos(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5982
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5983
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9600(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public addUtxos(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5956
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9600(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 5763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$8800(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearAvailableAmount()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 5803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9000(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearBranchId()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 6073
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6074
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10200(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearChange()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 5883
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9400(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 6139
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10500(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 5843
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5844
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9200(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearOutputOpReturn()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 6179
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public clearUtxos()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 6021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9900(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 5738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailableAmount()J
    .locals 2

    .line 5778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getAvailableAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBranchId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getBranchId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChange()J
    .locals 2

    .line 5858
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getChange()J

    move-result-wide v0

    return-wide v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 6114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 6088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 5818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputOpReturn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6154
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getOutputOpReturn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUtxos(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5919
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getUtxos(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public getUtxosCount()I
    .locals 1

    .line 5909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getUtxosCount()I

    move-result v0

    return v0
.end method

.method public getUtxosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation

    .line 5897
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    .line 5898
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getUtxosList()Ljava/util/List;

    move-result-object v0

    .line 5897
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeUtxos(I)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6033
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6034
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10000(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;I)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$8700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V

    return-object p0
.end method

.method public setAvailableAmount(J)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$8900(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V

    return-object p0
.end method

.method public setBranchId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10100(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChange(J)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9300(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6126
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10400(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10300(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;I)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5830
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9100(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V

    return-object p0
.end method

.method public setOutputOpReturn(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6166
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$10600(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
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

    .line 5943
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5944
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    .line 5945
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    .line 5944
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9500(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public setUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
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

    .line 5930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->access$9500(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method
