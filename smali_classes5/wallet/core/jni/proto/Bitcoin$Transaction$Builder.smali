.class public final Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$Transaction;",
        "Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 550
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$000()Lwallet/core/jni/proto/Bitcoin$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 543
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;)",
            "Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$800(Lwallet/core/jni/proto/Bitcoin$Transaction;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;)",
            "Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1400(Lwallet/core/jni/proto/Bitcoin$Transaction;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 741
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 743
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    .line 742
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$700(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$700(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$600(Lwallet/core/jni/proto/Bitcoin$Transaction;Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$600(Lwallet/core/jni/proto/Bitcoin$Transaction;Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 891
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 893
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    .line 892
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1300(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1300(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1200(Lwallet/core/jni/proto/Bitcoin$Transaction;Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 853
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1200(Lwallet/core/jni/proto/Bitcoin$Transaction;Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public clearInputs()Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$900(Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public clearLockTime()Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$400(Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public clearOutputs()Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1500(Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$200(Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-object p0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getInputs(I)Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getInputsCount()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 644
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getInputsList()Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getLockTime()I

    move-result v0

    return v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getOutputs(I)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getOutputsCount()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 794
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getOutputsList()Ljava/util/List;

    move-result-object v0

    .line 793
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getVersion()I

    move-result v0

    return v0
.end method

.method public removeInputs(I)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1000(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V

    return-object p0
.end method

.method public removeOutputs(I)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 929
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1600(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 689
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 690
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 691
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    .line 690
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$500(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 676
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$500(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public setLockTime(I)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$300(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 839
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 841
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    .line 840
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1100(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
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

    .line 826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$1100(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->access$100(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V

    return-object p0
.end method
