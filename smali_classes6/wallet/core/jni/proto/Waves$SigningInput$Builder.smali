.class public final Lwallet/core/jni/proto/Waves$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Waves$SigningInput;",
        "Lwallet/core/jni/proto/Waves$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2351
    invoke-static {}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3300()Lwallet/core/jni/proto/Waves$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Waves$1;)V
    .locals 0

    .line 2344
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCancelLeaseMessage()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2586
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4700(Lwallet/core/jni/proto/Waves$SigningInput;)V

    return-object p0
.end method

.method public clearLeaseMessage()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4400(Lwallet/core/jni/proto/Waves$SigningInput;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3400(Lwallet/core/jni/proto/Waves$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2442
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3800(Lwallet/core/jni/proto/Waves$SigningInput;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2402
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2403
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3600(Lwallet/core/jni/proto/Waves$SigningInput;)V

    return-object p0
.end method

.method public clearTransferMessage()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4100(Lwallet/core/jni/proto/Waves$SigningInput;)V

    return-object p0
.end method

.method public getCancelLeaseMessage()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
    .locals 1

    .line 2555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getCancelLeaseMessage()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLeaseMessage()Lwallet/core/jni/proto/Waves$LeaseMessage;
    .locals 1

    .line 2507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getLeaseMessage()Lwallet/core/jni/proto/Waves$LeaseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
    .locals 1

    .line 2357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getMessageOneofCase()Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 2377
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferMessage()Lwallet/core/jni/proto/Waves$TransferMessage;
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getTransferMessage()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasCancelLeaseMessage()Z
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->hasCancelLeaseMessage()Z

    move-result v0

    return v0
.end method

.method public hasLeaseMessage()Z
    .locals 1

    .line 2500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->hasLeaseMessage()Z

    move-result v0

    return v0
.end method

.method public hasTransferMessage()Z
    .locals 1

    .line 2452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->hasTransferMessage()Z

    move-result v0

    return v0
.end method

.method public mergeCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2578
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4600(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-object p0
.end method

.method public mergeLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2530
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4300(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-object p0
.end method

.method public mergeTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4000(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public setCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4500(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-object p0
.end method

.method public setCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4500(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-object p0
.end method

.method public setLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4200(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-object p0
.end method

.method public setLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$4200(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3700(Lwallet/core/jni/proto/Waves$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2389
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2390
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3500(Lwallet/core/jni/proto/Waves$SigningInput;J)V

    return-object p0
.end method

.method public setTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage$Builder;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2474
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3900(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public setTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2465
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->access$3900(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method
