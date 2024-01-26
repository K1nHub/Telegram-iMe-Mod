.class public final Lwallet/core/jni/proto/Tezos$Operation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$Operation;",
        "Lwallet/core/jni/proto/Tezos$Operation$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$OperationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2319
    invoke-static {}, Lwallet/core/jni/proto/Tezos$Operation;->access$2400()Lwallet/core/jni/proto/Tezos$Operation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 2312
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCounter()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$2700(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearDelegationOperationData()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2769
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$4800(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2479
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$3200(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$3400(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearKind()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$3900(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearOperationData()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2329
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2330
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$2500(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearRevealOperationData()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2673
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2674
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$4200(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearSource()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$2900(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearStorageLimit()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2559
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2560
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$3600(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearTransactionOperationData()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2721
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation;->access$4500(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public getCounter()J
    .locals 2

    .line 2345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getCounter()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDelegationOperationData()Lwallet/core/jni/proto/Tezos$DelegationOperationData;
    .locals 1

    .line 2738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getDelegationOperationData()Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 2454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 2494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKind()Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
    .locals 1

    .line 2600
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getKind()Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    move-result-object v0

    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    .line 2574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getKindValue()I

    move-result v0

    return v0
.end method

.method public getOperationDataCase()Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
    .locals 1

    .line 2325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getOperationDataCase()Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    move-result-object v0

    return-object v0
.end method

.method public getRevealOperationData()Lwallet/core/jni/proto/Tezos$RevealOperationData;
    .locals 1

    .line 2642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getRevealOperationData()Lwallet/core/jni/proto/Tezos$RevealOperationData;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 2385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStorageLimit()J
    .locals 2

    .line 2534
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getStorageLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionOperationData()Lwallet/core/jni/proto/Tezos$TransactionOperationData;
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getTransactionOperationData()Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    move-result-object v0

    return-object v0
.end method

.method public hasDelegationOperationData()Z
    .locals 1

    .line 2731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->hasDelegationOperationData()Z

    move-result v0

    return v0
.end method

.method public hasRevealOperationData()Z
    .locals 1

    .line 2635
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->hasRevealOperationData()Z

    move-result v0

    return v0
.end method

.method public hasTransactionOperationData()Z
    .locals 1

    .line 2683
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->hasTransactionOperationData()Z

    move-result v0

    return v0
.end method

.method public mergeDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4700(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V

    return-object p0
.end method

.method public mergeRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2665
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4100(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$RevealOperationData;)V

    return-object p0
.end method

.method public mergeTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2713
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2714
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4400(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-object p0
.end method

.method public setCounter(J)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->access$2600(Lwallet/core/jni/proto/Tezos$Operation;J)V

    return-object p0
.end method

.method public setDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2753
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4600(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V

    return-object p0
.end method

.method public setDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2744
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4600(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2466
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->access$3100(Lwallet/core/jni/proto/Tezos$Operation;J)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->access$3300(Lwallet/core/jni/proto/Tezos$Operation;J)V

    return-object p0
.end method

.method public setKind(Lwallet/core/jni/proto/Tezos$Operation$OperationKind;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2612
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2613
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$3800(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$Operation$OperationKind;)V

    return-object p0
.end method

.method public setKindValue(I)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2586
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$3700(Lwallet/core/jni/proto/Tezos$Operation;I)V

    return-object p0
.end method

.method public setRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2657
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2658
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4000(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$RevealOperationData;)V

    return-object p0
.end method

.method public setRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2648
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4000(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$RevealOperationData;)V

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$2800(Lwallet/core/jni/proto/Tezos$Operation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2439
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2440
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$3000(Lwallet/core/jni/proto/Tezos$Operation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStorageLimit(J)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2546
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->access$3500(Lwallet/core/jni/proto/Tezos$Operation;J)V

    return-object p0
.end method

.method public setTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4300(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-object p0
.end method

.method public setTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2696
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2697
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->access$4300(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-object p0
.end method
