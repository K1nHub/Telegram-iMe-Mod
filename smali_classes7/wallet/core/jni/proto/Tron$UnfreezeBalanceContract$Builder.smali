.class public final Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$UnfreezeBalanceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;",
        "Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$UnfreezeBalanceContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6488
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$10400()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 6481
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1

    .line 6541
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6542
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$10600(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-object p0
.end method

.method public clearReceiverAddress()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1

    .line 6679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$11200(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-object p0
.end method

.method public clearResource()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1

    .line 6610
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$10900(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-object p0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 6502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 6640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getReceiverAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 6571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6584
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6528
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6529
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$10500(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$10700(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReceiverAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6666
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6667
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$11100(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6694
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$11300(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$10800(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->access$11000(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
