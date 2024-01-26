.class public final Lwallet/core/jni/proto/Nervos$Cell$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$CellOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$Cell;",
        "Lwallet/core/jni/proto/Nervos$Cell$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$CellOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9278
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->access$15200()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 9271
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBlockHash()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9650
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9651
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$16900(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearBlockNumber()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9610
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$16700(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearCapacity()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$15700(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$16500(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearInputType()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9730
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$17300(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearLock()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$16000(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearOutPoint()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$15500(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearOutputType()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9770
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$17500(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearSince()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$17100(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearType()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9530
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->access$16300(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBlockNumber()J
    .locals 2

    .line 9585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getBlockNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCapacity()J
    .locals 2

    .line 9363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9705
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getInputType()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 9413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getLock()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;
    .locals 1

    .line 9302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getOutputType()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSince()J
    .locals 2

    .line 9665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 9484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getType()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    return-object v0
.end method

.method public hasLock()Z
    .locals 1

    .line 9402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->hasLock()Z

    move-result v0

    return v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 9291
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->hasOutPoint()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 9473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->hasType()Z

    move-result v0

    return v0
.end method

.method public mergeLock(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9448
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9449
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$15900(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public mergeOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9337
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$15400(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public mergeType(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$16200(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setBlockHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9637
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9638
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$16800(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBlockNumber(J)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$Cell;->access$16600(Lwallet/core/jni/proto/Nervos$Cell;J)V

    return-object p0
.end method

.method public setCapacity(J)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9375
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9376
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$Cell;->access$15600(Lwallet/core/jni/proto/Nervos$Cell;J)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9557
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9558
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$16400(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInputType(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$17200(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLock(Lwallet/core/jni/proto/Nervos$Script$Builder;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9436
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$15800(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setLock(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$15800(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint$Builder;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9325
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$15300(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9312
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9313
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$15300(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public setOutputType(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$17400(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSince(J)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$Cell;->access$17000(Lwallet/core/jni/proto/Nervos$Cell;J)V

    return-object p0
.end method

.method public setType(Lwallet/core/jni/proto/Nervos$Script$Builder;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9507
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$16100(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setType(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->access$16100(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method
