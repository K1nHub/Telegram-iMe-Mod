.class public final Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$TransactionCoinToOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS$TransactionCoinTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NULS$TransactionCoinTo;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinToOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1204
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$1500()Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NULS$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAssetsChainid()Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1

    .line 1312
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1313
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2000(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public clearAssetsId()Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2200(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public clearIdAmount()Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2400(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public clearLockTime()Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2600(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$1700(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public getAssetsChainid()I
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getAssetsChainid()I

    move-result v0

    return v0
.end method

.method public getAssetsId()I
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getAssetsId()I

    move-result v0

    return v0
.end method

.method public getIdAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getIdAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getLockTime()I

    move-result v0

    return v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAssetsChainid(I)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$1900(Lwallet/core/jni/proto/NULS$TransactionCoinTo;I)V

    return-object p0
.end method

.method public setAssetsId(I)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2100(Lwallet/core/jni/proto/NULS$TransactionCoinTo;I)V

    return-object p0
.end method

.method public setIdAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1379
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2300(Lwallet/core/jni/proto/NULS$TransactionCoinTo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLockTime(I)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$2500(Lwallet/core/jni/proto/NULS$TransactionCoinTo;I)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$1600(Lwallet/core/jni/proto/NULS$TransactionCoinTo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->access$1800(Lwallet/core/jni/proto/NULS$TransactionCoinTo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
