.class public final Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$TransactionCoinFromOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NULS$TransactionCoinFrom;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinFromOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 456
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$000()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NULS$1;)V
    .locals 0

    .line 449
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAssetsChainid()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$500(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public clearAssetsId()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 605
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$700(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$200(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public clearIdAmount()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$900(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public clearLocked()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$1300(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$1100(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public getAssetsChainid()I
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getAssetsChainid()I

    move-result v0

    return v0
.end method

.method public getAssetsId()I
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getAssetsId()I

    move-result v0

    return v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getFromAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getIdAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLocked()I
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getLocked()I

    move-result v0

    return v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAssetsChainid(I)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$400(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;I)V

    return-object p0
.end method

.method public setAssetsId(I)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$600(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;I)V

    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$100(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$300(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 632
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$800(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLocked(I)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$1200(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;I)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->access$1000(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
