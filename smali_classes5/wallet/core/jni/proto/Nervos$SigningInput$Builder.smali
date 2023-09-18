.class public final Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$SigningInput;",
        "Lwallet/core/jni/proto/Nervos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7866
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$11900()Lwallet/core/jni/proto/Nervos$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 7859
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCell(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;)",
            "Lwallet/core/jni/proto/Nervos$SigningInput$Builder;"
        }
    .end annotation

    .line 8140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13000(Lwallet/core/jni/proto/Nervos$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllPrivateKey(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Nervos$SigningInput$Builder;"
        }
    .end annotation

    .line 8001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12500(Lwallet/core/jni/proto/Nervos$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCell(ILwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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

    .line 8126
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    .line 8128
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$Cell;

    .line 8127
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12900(Lwallet/core/jni/proto/Nervos$SigningInput;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addCell(ILwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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

    .line 8100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12900(Lwallet/core/jni/proto/Nervos$SigningInput;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addCell(Lwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12800(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12800(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12400(Lwallet/core/jni/proto/Nervos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearByteFee()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 7917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12200(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearCell()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8152
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8153
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13100(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearDaoDeposit()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8379
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14400(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearDaoWithdrawPhase1()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8427
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8428
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14700(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearDaoWithdrawPhase2()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$15000(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearNativeTransfer()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8283
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13800(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearOperationOneof()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 7876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12000(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearPlan()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8235
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8236
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13500(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12600(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public clearSudtTransfer()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8332
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14100(Lwallet/core/jni/proto/Nervos$SigningInput;)V

    return-object p0
.end method

.method public getByteFee()J
    .locals 2

    .line 7892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getByteFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCell(I)Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8050
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->getCell(I)Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object p1

    return-object p1
.end method

.method public getCellCount()I
    .locals 1

    .line 8040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getCellCount()I

    move-result v0

    return v0
.end method

.method public getCellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation

    .line 8028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    .line 8029
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getCellList()Ljava/util/List;

    move-result-object v0

    .line 8028
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDaoDeposit()Lwallet/core/jni/proto/Nervos$DaoDeposit;
    .locals 1

    .line 8348
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getDaoDeposit()Lwallet/core/jni/proto/Nervos$DaoDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getDaoWithdrawPhase1()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
    .locals 1

    .line 8396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getDaoWithdrawPhase1()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    move-result-object v0

    return-object v0
.end method

.method public getDaoWithdrawPhase2()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
    .locals 1

    .line 8444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getDaoWithdrawPhase2()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    move-result-object v0

    return-object v0
.end method

.method public getNativeTransfer()Lwallet/core/jni/proto/Nervos$NativeTransfer;
    .locals 1

    .line 8252
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getNativeTransfer()Lwallet/core/jni/proto/Nervos$NativeTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getOperationOneofCase()Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
    .locals 1

    .line 7872
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getOperationOneofCase()Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/Nervos$TransactionPlan;
    .locals 1

    .line 8189
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getPlan()Lwallet/core/jni/proto/Nervos$TransactionPlan;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->getPrivateKey(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKeyCount()I
    .locals 1

    .line 7946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getPrivateKeyCount()I

    move-result v0

    return v0
.end method

.method public getPrivateKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 7933
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    .line 7934
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getPrivateKeyList()Ljava/util/List;

    move-result-object v0

    .line 7933
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSudtTransfer()Lwallet/core/jni/proto/Nervos$SudtTransfer;
    .locals 1

    .line 8300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->getSudtTransfer()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    return-object v0
.end method

.method public hasDaoDeposit()Z
    .locals 1

    .line 8341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->hasDaoDeposit()Z

    move-result v0

    return v0
.end method

.method public hasDaoWithdrawPhase1()Z
    .locals 1

    .line 8389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->hasDaoWithdrawPhase1()Z

    move-result v0

    return v0
.end method

.method public hasDaoWithdrawPhase2()Z
    .locals 1

    .line 8437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->hasDaoWithdrawPhase2()Z

    move-result v0

    return v0
.end method

.method public hasNativeTransfer()Z
    .locals 1

    .line 8245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->hasNativeTransfer()Z

    move-result v0

    return v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 8178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->hasPlan()Z

    move-result v0

    return v0
.end method

.method public hasSudtTransfer()Z
    .locals 1

    .line 8293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;->hasSudtTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8371
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14300(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-object p0
.end method

.method public mergeDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14600(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-object p0
.end method

.method public mergeDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8467
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14900(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-object p0
.end method

.method public mergeNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8275
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13700(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public mergePlan(Lwallet/core/jni/proto/Nervos$TransactionPlan;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8225
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13400(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public mergeSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8323
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14000(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public removeCell(I)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13200(Lwallet/core/jni/proto/Nervos$SigningInput;I)V

    return-object p0
.end method

.method public setByteFee(J)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12100(Lwallet/core/jni/proto/Nervos$SigningInput;J)V

    return-object p0
.end method

.method public setCell(ILwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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

    .line 8074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    .line 8076
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$Cell;

    .line 8075
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12700(Lwallet/core/jni/proto/Nervos$SigningInput;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setCell(ILwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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

    .line 8061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12700(Lwallet/core/jni/proto/Nervos$SigningInput;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14200(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-object p0
.end method

.method public setDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8354
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8355
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14200(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-object p0
.end method

.method public setDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14500(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-object p0
.end method

.method public setDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8402
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8403
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14500(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-object p0
.end method

.method public setDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14800(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-object p0
.end method

.method public setDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8450
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$14800(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-object p0
.end method

.method public setNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8267
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13600(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public setNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8258
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8259
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13600(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13300(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/Nervos$TransactionPlan;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8199
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13300(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public setPrivateKey(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
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

    .line 7972
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$12300(Lwallet/core/jni/proto/Nervos$SigningInput;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8315
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8316
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13900(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public setSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8306
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8307
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->access$13900(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method
