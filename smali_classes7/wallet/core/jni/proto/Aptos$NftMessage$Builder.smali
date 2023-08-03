.class public final Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$NftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$NftMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$NftMessage;",
        "Lwallet/core/jni/proto/Aptos$NftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$NftMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5564
    invoke-static {}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$8800()Lwallet/core/jni/proto/Aptos$NftMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 5557
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$NftMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCancelOfferNft()Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1

    .line 5671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9500(Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public clearClaimNft()Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1

    .line 5719
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5720
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9800(Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public clearNftTransactionPayload()Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1

    .line 5574
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$8900(Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public clearOfferNft()Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1

    .line 5623
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5624
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9200(Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public getCancelOfferNft()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
    .locals 1

    .line 5640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->getCancelOfferNft()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    return-object v0
.end method

.method public getClaimNft()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
    .locals 1

    .line 5688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->getClaimNft()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    return-object v0
.end method

.method public getNftTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    .locals 1

    .line 5570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->getNftTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getOfferNft()Lwallet/core/jni/proto/Aptos$OfferNftMessage;
    .locals 1

    .line 5592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->getOfferNft()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasCancelOfferNft()Z
    .locals 1

    .line 5633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->hasCancelOfferNft()Z

    move-result v0

    return v0
.end method

.method public hasClaimNft()Z
    .locals 1

    .line 5681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->hasClaimNft()Z

    move-result v0

    return v0
.end method

.method public hasOfferNft()Z
    .locals 1

    .line 5585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->hasOfferNft()Z

    move-result v0

    return v0
.end method

.method public mergeCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5663
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9400(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public mergeClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9700(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public mergeOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5615
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5616
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9100(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public setCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5655
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5656
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9300(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public setCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5646
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9300(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public setClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5703
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9600(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public setClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5694
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9600(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public setOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5607
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9000(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public setOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5598
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->access$9000(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method
