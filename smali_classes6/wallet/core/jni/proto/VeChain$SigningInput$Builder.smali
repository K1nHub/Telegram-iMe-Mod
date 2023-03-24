.class public final Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VeChain.java"

# interfaces
.implements Lwallet/core/jni/proto/VeChain$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/VeChain$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/VeChain$SigningInput;",
        "Lwallet/core/jni/proto/VeChain$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/VeChain$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1250
    invoke-static {}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$900()Lwallet/core/jni/proto/VeChain$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/VeChain$1;)V
    .locals 0

    .line 1243
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllClauses(Ljava/lang/Iterable;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;)",
            "Lwallet/core/jni/proto/VeChain$SigningInput$Builder;"
        }
    .end annotation

    .line 1525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1900(Lwallet/core/jni/proto/VeChain$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addClauses(ILwallet/core/jni/proto/VeChain$Clause$Builder;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
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

    .line 1508
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1509
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    .line 1510
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/VeChain$Clause;

    .line 1509
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1800(Lwallet/core/jni/proto/VeChain$SigningInput;ILwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public addClauses(ILwallet/core/jni/proto/VeChain$Clause;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
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

    .line 1476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1800(Lwallet/core/jni/proto/VeChain$SigningInput;ILwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public addClauses(Lwallet/core/jni/proto/VeChain$Clause$Builder;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1700(Lwallet/core/jni/proto/VeChain$SigningInput;Lwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public addClauses(Lwallet/core/jni/proto/VeChain$Clause;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1700(Lwallet/core/jni/proto/VeChain$SigningInput;Lwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public clearBlockRef()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1329
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1330
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1300(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearChainTag()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1100(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearClauses()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2000(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearDependsOn()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1676
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2700(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearExpiration()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1369
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1500(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearGas()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1635
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1636
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2500(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearGasPriceCoef()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1595
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2300(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2900(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1755
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1756
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$3100(Lwallet/core/jni/proto/VeChain$SigningInput;)V

    return-object p0
.end method

.method public getBlockRef()J
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getBlockRef()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChainTag()I
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getChainTag()I

    move-result v0

    return v0
.end method

.method public getClauses(I)Lwallet/core/jni/proto/VeChain$Clause;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->getClauses(I)Lwallet/core/jni/proto/VeChain$Clause;

    move-result-object p1

    return-object p1
.end method

.method public getClausesCount()I
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getClausesCount()I

    move-result v0

    return v0
.end method

.method public getClausesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    .line 1387
    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getClausesList()Ljava/util/List;

    move-result-object v0

    .line 1386
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependsOn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getDependsOn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()I
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getExpiration()I

    move-result v0

    return v0
.end method

.method public getGas()J
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getGas()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPriceCoef()I
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getGasPriceCoef()I

    move-result v0

    return v0
.end method

.method public getNonce()J
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeClauses(I)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2100(Lwallet/core/jni/proto/VeChain$SigningInput;I)V

    return-object p0
.end method

.method public setBlockRef(J)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1316
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1200(Lwallet/core/jni/proto/VeChain$SigningInput;J)V

    return-object p0
.end method

.method public setChainTag(I)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1276
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1277
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1000(Lwallet/core/jni/proto/VeChain$SigningInput;I)V

    return-object p0
.end method

.method public setClauses(ILwallet/core/jni/proto/VeChain$Clause$Builder;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
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

    .line 1444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    .line 1446
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/VeChain$Clause;

    .line 1445
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1600(Lwallet/core/jni/proto/VeChain$SigningInput;ILwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public setClauses(ILwallet/core/jni/proto/VeChain$Clause;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
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

    .line 1428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1600(Lwallet/core/jni/proto/VeChain$SigningInput;ILwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public setDependsOn(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1663
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2600(Lwallet/core/jni/proto/VeChain$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExpiration(I)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$1400(Lwallet/core/jni/proto/VeChain$SigningInput;I)V

    return-object p0
.end method

.method public setGas(J)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1622
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2400(Lwallet/core/jni/proto/VeChain$SigningInput;J)V

    return-object p0
.end method

.method public setGasPriceCoef(I)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1582
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1583
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2200(Lwallet/core/jni/proto/VeChain$SigningInput;I)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$2800(Lwallet/core/jni/proto/VeChain$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->access$3000(Lwallet/core/jni/proto/VeChain$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
