.class public final Lwallet/core/jni/proto/Decred$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Decred$Transaction;",
        "Lwallet/core/jni/proto/Decred$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 646
    invoke-static {}, Lwallet/core/jni/proto/Decred$Transaction;->access$000()Lwallet/core/jni/proto/Decred$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Decred$1;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;)",
            "Lwallet/core/jni/proto/Decred$Transaction$Builder;"
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$800(Lwallet/core/jni/proto/Decred$Transaction;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;)",
            "Lwallet/core/jni/proto/Decred$Transaction$Builder;"
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1400(Lwallet/core/jni/proto/Decred$Transaction;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/Decred$TransactionInput$Builder;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    .line 839
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Decred$TransactionInput;

    .line 838
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$700(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(ILwallet/core/jni/proto/Decred$TransactionInput;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$700(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/Decred$TransactionInput$Builder;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$600(Lwallet/core/jni/proto/Decred$Transaction;Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public addInputs(Lwallet/core/jni/proto/Decred$TransactionInput;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 798
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$600(Lwallet/core/jni/proto/Decred$Transaction;Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput$Builder;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    .line 989
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Decred$TransactionOutput;

    .line 988
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$1300(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$1300(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1200(Lwallet/core/jni/proto/Decred$Transaction;Lwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Decred$TransactionOutput;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1200(Lwallet/core/jni/proto/Decred$Transaction;Lwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public clearExpiry()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 1105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->access$2000(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public clearInputs()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->access$900(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public clearLockTime()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->access$1800(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public clearOutputs()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 1013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->access$1500(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public clearSerializeType()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 685
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->access$200(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->access$400(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-object p0
.end method

.method public getExpiry()I
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getExpiry()I

    move-result v0

    return v0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/Decred$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->getInputs(I)Lwallet/core/jni/proto/Decred$TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getInputsCount()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    .line 740
    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getInputsList()Ljava/util/List;

    move-result-object v0

    .line 739
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getLockTime()I

    move-result v0

    return v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Decred$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->getOutputs(I)Lwallet/core/jni/proto/Decred$TransactionOutput;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getOutputsCount()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    .line 890
    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getOutputsList()Ljava/util/List;

    move-result-object v0

    .line 889
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerializeType()I
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getSerializeType()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$Transaction;->getVersion()I

    move-result v0

    return v0
.end method

.method public removeInputs(I)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1000(Lwallet/core/jni/proto/Decred$Transaction;I)V

    return-object p0
.end method

.method public removeOutputs(I)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1026
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1600(Lwallet/core/jni/proto/Decred$Transaction;I)V

    return-object p0
.end method

.method public setExpiry(I)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1092
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1093
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1900(Lwallet/core/jni/proto/Decred$Transaction;I)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/Decred$TransactionInput$Builder;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 785
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    .line 787
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Decred$TransactionInput;

    .line 786
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$500(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public setInputs(ILwallet/core/jni/proto/Decred$TransactionInput;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 772
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$500(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public setLockTime(I)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$1700(Lwallet/core/jni/proto/Decred$Transaction;I)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput$Builder;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 935
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    .line 937
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Decred$TransactionOutput;

    .line 936
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$1100(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
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

    .line 922
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->access$1100(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public setSerializeType(I)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 672
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$100(Lwallet/core/jni/proto/Decred$Transaction;I)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->access$300(Lwallet/core/jni/proto/Decred$Transaction;I)V

    return-object p0
.end method
