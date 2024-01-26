.class public final Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred$TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Decred$TransactionInput;",
        "Lwallet/core/jni/proto/Decred$TransactionInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1632
    invoke-static {}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2200()Lwallet/core/jni/proto/Decred$TransactionInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Decred$1;)V
    .locals 0

    .line 1625
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBlockHeight()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$3100(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public clearBlockIndex()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1862
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$3300(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public clearPreviousOutput()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2500(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public clearScript()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1902
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1903
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$3500(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2700(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public clearValueIn()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1782
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2900(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-object p0
.end method

.method public getBlockHeight()I
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getBlockHeight()I

    move-result v0

    return v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getBlockIndex()I

    move-result v0

    return v0
.end method

.method public getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getSequence()I

    move-result v0

    return v0
.end method

.method public getValueIn()J
    .locals 2

    .line 1757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getValueIn()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPreviousOutput()Z
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->hasPreviousOutput()Z

    move-result v0

    return v0
.end method

.method public mergePreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1691
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1692
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2400(Lwallet/core/jni/proto/Decred$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setBlockHeight(I)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$3000(Lwallet/core/jni/proto/Decred$TransactionInput;I)V

    return-object p0
.end method

.method public setBlockIndex(I)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1849
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$3200(Lwallet/core/jni/proto/Decred$TransactionInput;I)V

    return-object p0
.end method

.method public setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2300(Lwallet/core/jni/proto/Decred$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1666
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1667
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2300(Lwallet/core/jni/proto/Decred$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setScript(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1889
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1890
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$3400(Lwallet/core/jni/proto/Decred$TransactionInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(I)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1729
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2600(Lwallet/core/jni/proto/Decred$TransactionInput;I)V

    return-object p0
.end method

.method public setValueIn(J)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1769
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$TransactionInput;->access$2800(Lwallet/core/jni/proto/Decred$TransactionInput;J)V

    return-object p0
.end method
