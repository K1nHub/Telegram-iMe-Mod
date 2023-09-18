.class public final Lwallet/core/jni/proto/Icon$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Icon.java"

# interfaces
.implements Lwallet/core/jni/proto/Icon$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Icon$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Icon$SigningInput;",
        "Lwallet/core/jni/proto/Icon$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Icon$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 598
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->access$000()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Icon$1;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFromAddress()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$200(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearNetworkId()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1600(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 895
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 896
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1400(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 975
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1800(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearStepLimit()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1000(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1200(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 720
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$500(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->access$800(Lwallet/core/jni/proto/Icon$SigningInput;)V

    return-object p0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getFromAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getNetworkId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStepLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getStepLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFromAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$100(Lwallet/core/jni/proto/Icon$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 667
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$300(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNetworkId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 922
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1500(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1300(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1700(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStepLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$900(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 842
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Icon$SigningInput;->access$1100(Lwallet/core/jni/proto/Icon$SigningInput;J)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$400(Lwallet/core/jni/proto/Icon$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$600(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->access$700(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
