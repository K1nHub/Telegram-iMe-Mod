.class public final Lwallet/core/jni/proto/Theta$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Theta.java"

# interfaces
.implements Lwallet/core/jni/proto/Theta$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Theta$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Theta$SigningInput;",
        "Lwallet/core/jni/proto/Theta$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Theta$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 548
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->access$000()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Theta$1;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChainId()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$200(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1400(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1600(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1200(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public clearTfuelAmount()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1000(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public clearThetaAmount()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$800(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->access$500(Lwallet/core/jni/proto/Theta$SigningInput;)V

    return-object p0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getFee()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTfuelAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getTfuelAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getThetaAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getThetaAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$100(Lwallet/core/jni/proto/Theta$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$300(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1300(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1500(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(J)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Theta$SigningInput;->access$1100(Lwallet/core/jni/proto/Theta$SigningInput;J)V

    return-object p0
.end method

.method public setTfuelAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$900(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setThetaAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$700(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$400(Lwallet/core/jni/proto/Theta$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 685
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->access$600(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
