.class public final Lwallet/core/jni/proto/EOS$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EOS.java"

# interfaces
.implements Lwallet/core/jni/proto/EOS$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/EOS$SigningInput;",
        "Lwallet/core/jni/proto/EOS$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/EOS$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1465
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->access$900()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/EOS$1;)V
    .locals 0

    .line 1458
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAsset()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$3000(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1504
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1100(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearCurrency()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1700(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2600(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1971
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$3200(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKeyType()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 2037
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2038
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$3500(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearRecipient()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1776
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2300(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearReferenceBlockId()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1300(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearReferenceBlockTime()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1584
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1500(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1707
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2000(Lwallet/core/jni/proto/EOS$SigningInput;)V

    return-object p0
.end method

.method public getAsset()Lwallet/core/jni/proto/EOS$Asset;
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getAsset()Lwallet/core/jni/proto/EOS$Asset;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getCurrencyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyType()Lwallet/core/jni/proto/EOS$KeyType;
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getPrivateKeyType()Lwallet/core/jni/proto/EOS$KeyType;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyTypeValue()I
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getPrivateKeyTypeValue()I

    move-result v0

    return v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getRecipient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getRecipientBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceBlockId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getReferenceBlockId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceBlockTime()I
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getReferenceBlockTime()I

    move-result v0

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getSenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 1874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->hasAsset()Z

    move-result v0

    return v0
.end method

.method public mergeAsset(Lwallet/core/jni/proto/EOS$Asset;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2900(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$Asset;)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/EOS$Asset$Builder;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1908
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2800(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$Asset;)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/EOS$Asset;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1895
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1896
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2800(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$Asset;)V

    return-object p0
.end method

.method public setChainId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1491
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1000(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1600(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCurrencyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1653
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1654
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1800(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1832
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2500(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1860
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1861
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2700(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1958
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$3100(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKeyType(Lwallet/core/jni/proto/EOS$KeyType;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2024
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2025
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$3400(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$KeyType;)V

    return-object p0
.end method

.method public setPrivateKeyTypeValue(I)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1998
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$3300(Lwallet/core/jni/proto/EOS$SigningInput;I)V

    return-object p0
.end method

.method public setRecipient(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2200(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1791
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1792
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2400(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReferenceBlockId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1531
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1200(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReferenceBlockTime(I)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1571
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1400(Lwallet/core/jni/proto/EOS$SigningInput;I)V

    return-object p0
.end method

.method public setSender(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1694
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$1900(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1722
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->access$2100(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
