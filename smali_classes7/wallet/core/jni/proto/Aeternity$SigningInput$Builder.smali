.class public final Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aeternity.java"

# interfaces
.implements Lwallet/core/jni/proto/Aeternity$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aeternity$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aeternity$SigningInput;",
        "Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aeternity$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 634
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$000()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aeternity$1;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$800(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1000(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$200(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1700(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1200(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 1040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1041
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1900(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$500(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public clearTtl()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 960
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 961
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1500(Lwallet/core/jni/proto/Aeternity$SigningInput;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getFee()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getFromAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getTtl()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 798
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$700(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 838
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$900(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$100(Lwallet/core/jni/proto/Aeternity$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$300(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1600(Lwallet/core/jni/proto/Aeternity$SigningInput;J)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1100(Lwallet/core/jni/proto/Aeternity$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayloadBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1300(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1027
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1800(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 743
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 744
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$400(Lwallet/core/jni/proto/Aeternity$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$600(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTtl(J)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 947
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 948
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aeternity$SigningInput;->access$1400(Lwallet/core/jni/proto/Aeternity$SigningInput;J)V

    return-object p0
.end method
