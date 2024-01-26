.class public final Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$NewFundsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$NewFundsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$NewFundsContent;",
        "Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$NewFundsContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1159
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$800()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 1152
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1300(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public clearCoinSymbol()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1600(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public clearHash()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1489
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2200(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1900(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public clearOfflineUrl()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1558
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2500(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public clearPayeePublicAddress()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1000(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSymbol()Ljava/lang/String;
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getCoinSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getCoinSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineUrl()Ljava/lang/String;
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getOfflineUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getOfflineUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayeePublicAddress()Ljava/lang/String;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getPayeePublicAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayeePublicAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getPayeePublicAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1200(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1296
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1400(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCoinSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1337
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1500(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCoinSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1366
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1700(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHash(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2100(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHashBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1503
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2300(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1406
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1407
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1800(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1434
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1435
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2000(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOfflineUrl(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2400(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOfflineUrlBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$2600(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayeePublicAddress(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$900(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayeePublicAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1227
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->access$1100(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
