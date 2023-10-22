.class public final Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationPaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$OperationPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$OperationPayment;",
        "Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationPaymentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1378
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$1500()Lwallet/core/jni/proto/Stellar$OperationPayment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 1371
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1558
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$2300(Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-object p0
.end method

.method public clearAsset()Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1

    .line 1517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$2100(Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-object p0
.end method

.method public clearDestination()Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1

    .line 1431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$1700(Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsset()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getAsset()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->hasAsset()Z

    move-result v0

    return v0
.end method

.method public mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$2000(Lwallet/core/jni/proto/Stellar$OperationPayment;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$2200(Lwallet/core/jni/proto/Stellar$OperationPayment;J)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/Stellar$Asset$Builder;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$1900(Lwallet/core/jni/proto/Stellar$OperationPayment;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$1900(Lwallet/core/jni/proto/Stellar$OperationPayment;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$1600(Lwallet/core/jni/proto/Stellar$OperationPayment;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->access$1800(Lwallet/core/jni/proto/Stellar$OperationPayment;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
