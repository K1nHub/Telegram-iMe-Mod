.class public final Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO$TransactionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEO$TransactionPlan;",
        "Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionPlanOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4794
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7500()Lwallet/core/jni/proto/NEO$TransactionPlan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEO$1;)V
    .locals 0

    .line 4787
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;)",
            "Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;"
        }
    .end annotation

    .line 5069
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8500(Lwallet/core/jni/proto/NEO$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;)",
            "Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;"
        }
    .end annotation

    .line 4919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7900(Lwallet/core/jni/proto/NEO$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/NEO$TransactionInput$Builder;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 5055
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5056
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 5057
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionInput;

    .line 5056
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8400(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 5029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8400(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/NEO$TransactionInput$Builder;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8300(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5016
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5017
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8300(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 4905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 4907
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    .line 4906
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7800(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 4879
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7800(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7700(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7700(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1

    .line 5199
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$9200(Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1

    .line 5133
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5134
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8900(Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public clearInputs()Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1

    .line 5081
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5082
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8600(Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public clearOutputs()Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1

    .line 4931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8000(Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-object p0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 5174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 5148
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 5108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/NEO$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getInputs(I)Lwallet/core/jni/proto/NEO$TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 4969
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getInputsCount()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 4957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 4958
    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getInputsList()Ljava/util/List;

    move-result-object v0

    .line 4957
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 4819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getOutputsCount()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;"
        }
    .end annotation

    .line 4807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 4808
    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getOutputsList()Ljava/util/List;

    move-result-object v0

    .line 4807
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeInputs(I)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5093
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5094
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8700(Lwallet/core/jni/proto/NEO$TransactionPlan;I)V

    return-object p0
.end method

.method public removeOutputs(I)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4943
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4944
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8100(Lwallet/core/jni/proto/NEO$TransactionPlan;I)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5186
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$9100(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5160
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5161
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$9000(Lwallet/core/jni/proto/NEO$TransactionPlan;I)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5120
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5121
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8800(Lwallet/core/jni/proto/NEO$TransactionPlan;J)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/NEO$TransactionInput$Builder;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 5003
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 5005
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionInput;

    .line 5004
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8200(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 4990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$8200(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 4853
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4854
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 4855
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    .line 4854
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7600(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
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

    .line 4840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->access$7600(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method
