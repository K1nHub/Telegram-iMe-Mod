.class public final Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves$TransferMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Waves$TransferMessage;",
        "Lwallet/core/jni/proto/Waves$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$TransferMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 534
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$000()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Waves$1;)V
    .locals 0

    .line 527
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$200(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public clearAsset()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$400(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public clearAttachment()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$1500(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$700(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public clearFeeAsset()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$900(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$1200(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsset()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getAsset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getAssetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getAttachment()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFeeAsset()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getFeeAsset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeeAssetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getFeeAssetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$100(Lwallet/core/jni/proto/Waves$TransferMessage;J)V

    return-object p0
.end method

.method public setAsset(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$300(Lwallet/core/jni/proto/Waves$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAssetBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 642
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 643
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$500(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAttachment(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 848
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$1400(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 669
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$600(Lwallet/core/jni/proto/Waves$TransferMessage;J)V

    return-object p0
.end method

.method public setFeeAsset(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$800(Lwallet/core/jni/proto/Waves$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFeeAssetBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 752
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$1000(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$1100(Lwallet/core/jni/proto/Waves$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->access$1300(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
