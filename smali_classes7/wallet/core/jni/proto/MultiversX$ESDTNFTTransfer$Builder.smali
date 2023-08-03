.class public final Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$ESDTNFTTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;",
        "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2459
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3400()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 2452
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccounts()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1

    .line 2529
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2530
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3700(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1

    .line 2692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2693
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$4400(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public clearTokenCollection()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1

    .line 2583
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2584
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3900(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public clearTokenNonce()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1

    .line 2638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$4200(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 2483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 2653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenCollection()Ljava/lang/String;
    .locals 1

    .line 2544
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getTokenCollection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getTokenCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenNonce()J
    .locals 2

    .line 2613
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getTokenNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 2472
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->hasAccounts()Z

    move-result v0

    return v0
.end method

.method public mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3600(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts$Builder;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3500(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2493
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3500(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$4300(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2707
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$4500(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenCollection(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$3800(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenCollectionBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2598
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$4000(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenNonce(J)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->access$4100(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;J)V

    return-object p0
.end method
