.class public final Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Filecoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Filecoin$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Filecoin$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Filecoin$SigningInput;",
        "Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Filecoin$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 508
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$000()Lwallet/core/jni/proto/Filecoin$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Filecoin$1;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGasFeeCap()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$1300(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$1100(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public clearGasPremium()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$1500(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$700(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$200(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$400(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$900(Lwallet/core/jni/proto/Filecoin$SigningInput;)V

    return-object p0
.end method

.method public getGasFeeCap()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getGasFeeCap()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPremium()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getGasPremium()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setGasFeeCap(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$1200(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$1000(Lwallet/core/jni/proto/Filecoin$SigningInput;J)V

    return-object p0
.end method

.method public setGasPremium(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$1400(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$600(Lwallet/core/jni/proto/Filecoin$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$100(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$300(Lwallet/core/jni/proto/Filecoin$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$500(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 683
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->access$800(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
