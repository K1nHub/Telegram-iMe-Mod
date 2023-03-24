.class public final Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$SigningInput;",
        "Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4099
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5000()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 4092
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPrivateKey(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;"
        }
    .end annotation

    .line 4446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6500(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUtxo(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;"
        }
    .end annotation

    .line 4711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7100(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6400(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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

    .line 4697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4698
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4699
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    .line 4698
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7000(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public addUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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

    .line 4671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7000(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public addUtxo(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4684
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4685
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public addUtxo(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4185
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5400(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearByteFee()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4225
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5600(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4347
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4348
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6100(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearCoinType()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearHashType()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5200(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearLockTime()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$8200(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearOutputOpReturn()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$8400(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearPlan()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$8000(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6600(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearScripts()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4278
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5800(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearUseMaxAmount()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4775
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7500(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public clearUtxo()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4723
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4724
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7200(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-object p0
.end method

.method public containsScripts(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 4480
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4481
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAmount()J
    .locals 2

    .line 4155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getByteFee()J
    .locals 2

    .line 4199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getByteFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 4308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoinType()I
    .locals 1

    .line 4790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getCoinType()I

    move-result v0

    return v0
.end method

.method public getHashType()I
    .locals 1

    .line 4113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getHashType()I

    move-result v0

    return v0
.end method

.method public getLockTime()I
    .locals 1

    .line 4905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getLockTime()I

    move-result v0

    return v0
.end method

.method public getOutputOpReturn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getOutputOpReturn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
    .locals 1

    .line 4840
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getPlan()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

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

    .line 4404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getPrivateKey(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKeyCount()I
    .locals 1

    .line 4391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getPrivateKeyCount()I

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

    .line 4378
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4379
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getPrivateKeyList()Ljava/util/List;

    move-result-object v0

    .line 4378
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScripts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4510
    invoke-virtual {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScriptsCount()I
    .locals 1

    .line 4467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getScriptsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 4521
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4522
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    .line 4521
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScriptsOrDefault(Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 4536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4538
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    .line 4539
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/ByteString;

    :cond_0
    return-object p2
.end method

.method public getScriptsOrThrow(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 4552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4554
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    .line 4555
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4558
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1

    .line 4556
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 4239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4252
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 4750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getUseMaxAmount()Z

    move-result v0

    return v0
.end method

.method public getUtxo(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getUtxo(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public getUtxoCount()I
    .locals 1

    .line 4611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getUtxoCount()I

    move-result v0

    return v0
.end method

.method public getUtxoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation

    .line 4599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4600
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getUtxoList()Ljava/util/List;

    move-result-object v0

    .line 4599
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 4829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->hasPlan()Z

    move-result v0

    return v0
.end method

.method public mergePlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4875
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public putAllScripts(Ljava/util/Map;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;"
        }
    .end annotation

    .line 4585
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4586
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putScripts(Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 4570
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4571
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeScripts(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 4499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeUtxo(I)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7300(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4169
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4170
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5300(Lwallet/core/jni/proto/Bitcoin$SigningInput;J)V

    return-object p0
.end method

.method public setByteFee(J)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4211
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4212
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5500(Lwallet/core/jni/proto/Bitcoin$SigningInput;J)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4334
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6000(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4362
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6200(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCoinType(I)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7600(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V

    return-object p0
.end method

.method public setHashType(I)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5100(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V

    return-object p0
.end method

.method public setLockTime(I)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4921
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$8100(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V

    return-object p0
.end method

.method public setOutputOpReturn(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$8300(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4863
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7800(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public setPlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7800(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-object p0
.end method

.method public setPrivateKey(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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

    .line 4417
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4418
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6300(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4265
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4266
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5700(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4293
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4294
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$5900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUseMaxAmount(Z)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$7400(Lwallet/core/jni/proto/Bitcoin$SigningInput;Z)V

    return-object p0
.end method

.method public setUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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

    .line 4645
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 4647
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    .line 4646
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6800(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public setUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
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

    .line 4632
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->access$6800(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method
