.class public final Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$TransactionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$TransactionPlan;",
        "Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TransactionPlanOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6995
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10000()Lwallet/core/jni/proto/Cardano$TransactionPlan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 6988
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAvailableTokens(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;"
        }
    .end annotation

    .line 7360
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11600(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllChangeTokens(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;"
        }
    .end annotation

    .line 7660
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12800(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputTokens(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;"
        }
    .end annotation

    .line 7510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12200(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUtxos(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;"
        }
    .end annotation

    .line 7810
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7811
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13400(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7348
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 7347
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11500(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7320
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11500(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addAvailableTokens(Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11400(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addAvailableTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7307
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11400(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7646
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7648
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 7647
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12700(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12700(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addChangeTokens(Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12600(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addChangeTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7607
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12600(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7498
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 7497
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12100(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7470
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12100(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addOutputTokens(Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7483
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12000(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addOutputTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7457
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7458
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12000(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addUtxos(ILwallet/core/jni/proto/Cardano$TxInput$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7798
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 7797
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13300(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public addUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7770
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13300(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public addUtxos(Lwallet/core/jni/proto/Cardano$TxInput$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7783
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7784
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13200(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public addUtxos(Lwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13200(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10400(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearAvailableAmount()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7034
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7035
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10200(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearAvailableTokens()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7372
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7373
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11700(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearChange()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7154
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10800(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearChangeTokens()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7672
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7673
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12900(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearDeposit()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7194
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7195
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11000(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7900
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7901
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13900(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7114
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10600(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearOutputTokens()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12300(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearUndeposit()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11200(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public clearUtxos()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 7822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13500(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 7049
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailableAmount()J
    .locals 2

    .line 7009
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getAvailableAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailableTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7270
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getAvailableTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableTokensCount()I
    .locals 1

    .line 7260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getAvailableTokensCount()I

    move-result v0

    return v0
.end method

.method public getAvailableTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 7248
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7249
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getAvailableTokensList()Ljava/util/List;

    move-result-object v0

    .line 7248
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChange()J
    .locals 2

    .line 7129
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getChange()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getChangeTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object p1

    return-object p1
.end method

.method public getChangeTokensCount()I
    .locals 1

    .line 7560
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getChangeTokensCount()I

    move-result v0

    return v0
.end method

.method public getChangeTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 7548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7549
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getChangeTokensList()Ljava/util/List;

    move-result-object v0

    .line 7548
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeposit()J
    .locals 2

    .line 7169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getDeposit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 7875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 7849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 7089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getOutputTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTokensCount()I
    .locals 1

    .line 7410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getOutputTokensCount()I

    move-result v0

    return v0
.end method

.method public getOutputTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 7398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7399
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getOutputTokensList()Ljava/util/List;

    move-result-object v0

    .line 7398
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUndeposit()J
    .locals 2

    .line 7209
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getUndeposit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUtxos(I)Lwallet/core/jni/proto/Cardano$TxInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7720
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getUtxos(I)Lwallet/core/jni/proto/Cardano$TxInput;

    move-result-object p1

    return-object p1
.end method

.method public getUtxosCount()I
    .locals 1

    .line 7710
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getUtxosCount()I

    move-result v0

    return v0
.end method

.method public getUtxosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation

    .line 7698
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7699
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getUtxosList()Ljava/util/List;

    move-result-object v0

    .line 7698
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAvailableTokens(I)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7384
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11800(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V

    return-object p0
.end method

.method public removeChangeTokens(I)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7684
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7685
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13000(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V

    return-object p0
.end method

.method public removeOutputTokens(I)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12400(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V

    return-object p0
.end method

.method public removeUtxos(I)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7834
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13600(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10300(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V

    return-object p0
.end method

.method public setAvailableAmount(J)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10100(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V

    return-object p0
.end method

.method public setAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7294
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7296
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 7295
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11300(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7281
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11300(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setChange(J)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10700(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V

    return-object p0
.end method

.method public setChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7596
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 7595
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12500(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$12500(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setDeposit(J)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10900(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7887
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13800(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13700(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7101
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$10500(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V

    return-object p0
.end method

.method public setOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7446
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 7445
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11900(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11900(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setUndeposit(J)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7221
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7222
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$11100(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V

    return-object p0
.end method

.method public setUtxos(ILwallet/core/jni/proto/Cardano$TxInput$Builder;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7744
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7746
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 7745
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13100(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public setUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
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

    .line 7731
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7732
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->access$13100(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method
