.class public final Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2OrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6706
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$10900()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 6699
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1

    .line 6887
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11700(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-object p0
.end method

.method public clearDepositCell()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1

    .line 6776
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11200(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-object p0
.end method

.method public clearWithdrawingCell()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1

    .line 6847
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6848
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11500(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 6862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDepositCell()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 6730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->getDepositCell()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawingCell()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 6801
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->getWithdrawingCell()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    return-object v0
.end method

.method public hasDepositCell()Z
    .locals 1

    .line 6719
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->hasDepositCell()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawingCell()Z
    .locals 1

    .line 6790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->hasWithdrawingCell()Z

    move-result v0

    return v0
.end method

.method public mergeDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11100(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public mergeWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6836
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6837
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11400(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11600(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;J)V

    return-object p0
.end method

.method public setDepositCell(Lwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6753
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11000(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6740
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6741
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11000(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11300(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->access$11300(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method
