.class public final Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$SigningInput;",
        "Lwallet/core/jni/proto/Cardano$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8971
    invoke-static {}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14100()Lwallet/core/jni/proto/Cardano$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 8964
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPrivateKey(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/Cardano$SigningInput$Builder;"
        }
    .end annotation

    .line 9210
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15000(Lwallet/core/jni/proto/Cardano$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUtxos(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/Cardano$SigningInput$Builder;"
        }
    .end annotation

    .line 9096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14500(Lwallet/core/jni/proto/Cardano$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9194
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9195
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14900(Lwallet/core/jni/proto/Cardano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addUtxos(ILwallet/core/jni/proto/Cardano$TxInput$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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

    .line 9082
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    .line 9084
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 9083
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14400(Lwallet/core/jni/proto/Cardano$SigningInput;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public addUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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

    .line 9056
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9057
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14400(Lwallet/core/jni/proto/Cardano$SigningInput;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public addUtxos(Lwallet/core/jni/proto/Cardano$TxInput$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9069
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14300(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public addUtxos(Lwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9043
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9044
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14300(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public clearDelegate()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16000(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearDeregisterStakingKey()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16600(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearPlan()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$17100(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9225
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15100(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearRegisterStakingKey()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15700(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearTransferMessage()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9295
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9296
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15400(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearTtl()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9619
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9620
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16800(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearUtxos()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9108
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9109
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14600(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public clearWithdraw()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 9508
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9509
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16300(Lwallet/core/jni/proto/Cardano$SigningInput;)V

    return-object p0
.end method

.method public getDelegate()Lwallet/core/jni/proto/Cardano$Delegate;
    .locals 1

    .line 9391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getDelegate()Lwallet/core/jni/proto/Cardano$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getDeregisterStakingKey()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
    .locals 1

    .line 9533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getDeregisterStakingKey()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    move-result-object v0

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/Cardano$TransactionPlan;
    .locals 1

    .line 9644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getPlan()Lwallet/core/jni/proto/Cardano$TransactionPlan;

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

    .line 9165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->getPrivateKey(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKeyCount()I
    .locals 1

    .line 9151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getPrivateKeyCount()I

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

    .line 9137
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    .line 9138
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getPrivateKeyList()Ljava/util/List;

    move-result-object v0

    .line 9137
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterStakingKey()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;
    .locals 1

    .line 9320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getRegisterStakingKey()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    move-result-object v0

    return-object v0
.end method

.method public getTransferMessage()Lwallet/core/jni/proto/Cardano$Transfer;
    .locals 1

    .line 9249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getTransferMessage()Lwallet/core/jni/proto/Cardano$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .line 9594
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getTtl()J

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

    .line 9006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->getUtxos(I)Lwallet/core/jni/proto/Cardano$TxInput;

    move-result-object p1

    return-object p1
.end method

.method public getUtxosCount()I
    .locals 1

    .line 8996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getUtxosCount()I

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

    .line 8984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    .line 8985
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getUtxosList()Ljava/util/List;

    move-result-object v0

    .line 8984
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWithdraw()Lwallet/core/jni/proto/Cardano$Withdraw;
    .locals 1

    .line 9462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->getWithdraw()Lwallet/core/jni/proto/Cardano$Withdraw;

    move-result-object v0

    return-object v0
.end method

.method public hasDelegate()Z
    .locals 1

    .line 9380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->hasDelegate()Z

    move-result v0

    return v0
.end method

.method public hasDeregisterStakingKey()Z
    .locals 1

    .line 9522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->hasDeregisterStakingKey()Z

    move-result v0

    return v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 9633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->hasPlan()Z

    move-result v0

    return v0
.end method

.method public hasRegisterStakingKey()Z
    .locals 1

    .line 9309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->hasRegisterStakingKey()Z

    move-result v0

    return v0
.end method

.method public hasTransferMessage()Z
    .locals 1

    .line 9238
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->hasTransferMessage()Z

    move-result v0

    return v0
.end method

.method public hasWithdraw()Z
    .locals 1

    .line 9451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;->hasWithdraw()Z

    move-result v0

    return v0
.end method

.method public mergeDelegate(Lwallet/core/jni/proto/Cardano$Delegate;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9426
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15900(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-object p0
.end method

.method public mergeDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9568
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9569
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16500(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-object p0
.end method

.method public mergePlan(Lwallet/core/jni/proto/Cardano$TransactionPlan;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$17000(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public mergeRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15600(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-object p0
.end method

.method public mergeTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9284
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15300(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public mergeWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16200(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-object p0
.end method

.method public removeUtxos(I)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9120
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9121
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14700(Lwallet/core/jni/proto/Cardano$SigningInput;I)V

    return-object p0
.end method

.method public setDelegate(Lwallet/core/jni/proto/Cardano$Delegate$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15800(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-object p0
.end method

.method public setDelegate(Lwallet/core/jni/proto/Cardano$Delegate;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15800(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-object p0
.end method

.method public setDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16400(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-object p0
.end method

.method public setDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9543
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9544
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16400(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9667
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9668
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16900(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/Cardano$TransactionPlan;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9654
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16900(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-object p0
.end method

.method public setPrivateKey(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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

    .line 9179
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14800(Lwallet/core/jni/proto/Cardano$SigningInput;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9343
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9344
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15500(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-object p0
.end method

.method public setRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15500(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-object p0
.end method

.method public setTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15200(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public setTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9259
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$15200(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public setTtl(J)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9606
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9607
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16700(Lwallet/core/jni/proto/Cardano$SigningInput;J)V

    return-object p0
.end method

.method public setUtxos(ILwallet/core/jni/proto/Cardano$TxInput$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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

    .line 9030
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9031
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    .line 9032
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TxInput;

    .line 9031
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14200(Lwallet/core/jni/proto/Cardano$SigningInput;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public setUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
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

    .line 9017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$14200(Lwallet/core/jni/proto/Cardano$SigningInput;ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-object p0
.end method

.method public setWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw$Builder;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16100(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-object p0
.end method

.method public setWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->access$16100(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-object p0
.end method
