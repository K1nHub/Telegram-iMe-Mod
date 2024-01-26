.class public final Lwallet/core/jni/proto/FIO$Action$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$Action;",
        "Lwallet/core/jni/proto/FIO$Action$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$ActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5519
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action;->access$8600()Lwallet/core/jni/proto/FIO$Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 5512
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddPubAddressMessage()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5626
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5627
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->access$9300(Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5529
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5530
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->access$8700(Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public clearNewFundsRequestMessage()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5770
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->access$10200(Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public clearRegisterFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5578
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->access$9000(Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public clearRenewFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5722
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->access$9900(Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public clearTransferMessage()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->access$9600(Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public getAddPubAddressMessage()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
    .locals 1

    .line 5595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->getAddPubAddressMessage()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
    .locals 1

    .line 5525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->getMessageOneofCase()Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewFundsRequestMessage()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
    .locals 1

    .line 5739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->getNewFundsRequestMessage()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
    .locals 1

    .line 5547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->getRegisterFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRenewFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
    .locals 1

    .line 5691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->getRenewFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransferMessage()Lwallet/core/jni/proto/FIO$Action$Transfer;
    .locals 1

    .line 5643
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->getTransferMessage()Lwallet/core/jni/proto/FIO$Action$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasAddPubAddressMessage()Z
    .locals 1

    .line 5588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->hasAddPubAddressMessage()Z

    move-result v0

    return v0
.end method

.method public hasNewFundsRequestMessage()Z
    .locals 1

    .line 5732
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->hasNewFundsRequestMessage()Z

    move-result v0

    return v0
.end method

.method public hasRegisterFioAddressMessage()Z
    .locals 1

    .line 5540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->hasRegisterFioAddressMessage()Z

    move-result v0

    return v0
.end method

.method public hasRenewFioAddressMessage()Z
    .locals 1

    .line 5684
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->hasRenewFioAddressMessage()Z

    move-result v0

    return v0
.end method

.method public hasTransferMessage()Z
    .locals 1

    .line 5636
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action;->hasTransferMessage()Z

    move-result v0

    return v0
.end method

.method public mergeAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9200(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-object p0
.end method

.method public mergeNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$10100(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public mergeRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$8900(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-object p0
.end method

.method public mergeRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5714
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5715
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9800(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-object p0
.end method

.method public mergeTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5666
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5667
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9500(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-object p0
.end method

.method public setAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5610
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9100(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-object p0
.end method

.method public setAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9100(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-object p0
.end method

.method public setNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5754
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5755
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$10000(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public setNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5745
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5746
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$10000(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public setRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$8800(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-object p0
.end method

.method public setRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$8800(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-object p0
.end method

.method public setRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5706
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5707
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9700(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-object p0
.end method

.method public setRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5698
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9700(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-object p0
.end method

.method public setTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9400(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-object p0
.end method

.method public setTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5649
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5650
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action;->access$9400(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-object p0
.end method
