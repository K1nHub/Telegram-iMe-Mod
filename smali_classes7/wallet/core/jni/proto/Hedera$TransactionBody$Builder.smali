.class public final Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TransactionBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$TransactionBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Hedera$TransactionBody;",
        "Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TransactionBodyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2339
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$2800()Lwallet/core/jni/proto/Hedera$TransactionBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Hedera$1;)V
    .locals 0

    .line 2332
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2349
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2350
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$2900(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4100(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public clearNodeAccountID()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3400(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public clearTransactionFee()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3700(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public clearTransactionID()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2427
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2428
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3200(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public clearTransactionValidDuration()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3900(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4500(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public getDataCase()Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
    .locals 1

    .line 2345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getDataCase()Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 2591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNodeAccountID()Ljava/lang/String;
    .locals 1

    .line 2442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getNodeAccountID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeAccountIDBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getNodeAccountIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionFee()J
    .locals 2

    .line 2511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getTransactionFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionID()Lwallet/core/jni/proto/Hedera$TransactionID;
    .locals 1

    .line 2377
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getTransactionID()Lwallet/core/jni/proto/Hedera$TransactionID;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionValidDuration()J
    .locals 2

    .line 2551
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getTransactionValidDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Hedera$TransferMessage;
    .locals 1

    .line 2670
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getTransfer()Lwallet/core/jni/proto/Hedera$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasTransactionID()Z
    .locals 1

    .line 2365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->hasTransactionID()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 2659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2415
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2416
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3100(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4400(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4000(Lwallet/core/jni/proto/Hedera$TransactionBody;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2645
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4200(Lwallet/core/jni/proto/Hedera$TransactionBody;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNodeAccountID(Ljava/lang/String;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2468
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3300(Lwallet/core/jni/proto/Hedera$TransactionBody;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNodeAccountIDBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3500(Lwallet/core/jni/proto/Hedera$TransactionBody;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransactionFee(J)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2523
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2524
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3600(Lwallet/core/jni/proto/Hedera$TransactionBody;J)V

    return-object p0
.end method

.method public setTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID$Builder;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2402
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2403
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3000(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public setTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3000(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public setTransactionValidDuration(J)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2563
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$3800(Lwallet/core/jni/proto/Hedera$TransactionBody;J)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2693
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4300(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2680
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->access$4300(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-object p0
.end method
