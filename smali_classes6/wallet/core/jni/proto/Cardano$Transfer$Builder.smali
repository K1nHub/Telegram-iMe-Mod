.class public final Lwallet/core/jni/proto/Cardano$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$Transfer;",
        "Lwallet/core/jni/proto/Cardano$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3583
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5300()Lwallet/core/jni/proto/Cardano$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 3576
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6100(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5800(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public clearForceFee()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3923
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6800(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5500(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public clearTokenAmount()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6400(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public clearUseMaxAmount()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6600(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 3736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3679
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceFee()J
    .locals 2

    .line 3896
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getForceFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 3597
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3610
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAmount()Lwallet/core/jni/proto/Cardano$TokenBundle;
    .locals 1

    .line 3790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getTokenAmount()Lwallet/core/jni/proto/Cardano$TokenBundle;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 3855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getUseMaxAmount()Z

    move-result v0

    return v0
.end method

.method public hasTokenAmount()Z
    .locals 1

    .line 3778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->hasTokenAmount()Z

    move-result v0

    return v0
.end method

.method public mergeTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6300(Lwallet/core/jni/proto/Cardano$Transfer;Lwallet/core/jni/proto/Cardano$TokenBundle;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6000(Lwallet/core/jni/proto/Cardano$Transfer;J)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3693
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5700(Lwallet/core/jni/proto/Cardano$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3720
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3721
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5900(Lwallet/core/jni/proto/Cardano$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceFee(J)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3909
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6700(Lwallet/core/jni/proto/Cardano$Transfer;J)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3623
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3624
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5400(Lwallet/core/jni/proto/Cardano$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3651
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$5600(Lwallet/core/jni/proto/Cardano$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6200(Lwallet/core/jni/proto/Cardano$Transfer;Lwallet/core/jni/proto/Cardano$TokenBundle;)V

    return-object p0
.end method

.method public setTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6200(Lwallet/core/jni/proto/Cardano$Transfer;Lwallet/core/jni/proto/Cardano$TokenBundle;)V

    return-object p0
.end method

.method public setUseMaxAmount(Z)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3867
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->access$6500(Lwallet/core/jni/proto/Cardano$Transfer;Z)V

    return-object p0
.end method
