.class public final Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$Transfer;",
        "Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3583
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4100()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 3576
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReceiver()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5500(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5200(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public clearSourceChannel()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4600(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public clearSourcePort()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4300(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public clearTimeoutHeight()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5900(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public clearTimeoutTimestamp()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3982
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3983
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$6100(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public clearToken()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3767
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3768
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5000(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-object p0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 3827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getReceiver()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 3778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSourceChannel()Ljava/lang/String;
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSourceChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3679
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSourceChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePort()Ljava/lang/String;
    .locals 1

    .line 3597
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSourcePort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePortBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3610
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSourcePortBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutHeight()Lwallet/core/jni/proto/Cosmos$Height;
    .locals 1

    .line 3892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getTimeoutHeight()Lwallet/core/jni/proto/Cosmos$Height;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutTimestamp()J
    .locals 2

    .line 3957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getTimeoutTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToken()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 3737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getToken()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    return-object v0
.end method

.method public hasTimeoutHeight()Z
    .locals 1

    .line 3880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->hasTimeoutHeight()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .line 3730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->hasToken()Z

    move-result v0

    return v0
.end method

.method public mergeTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5800(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Height;)V

    return-object p0
.end method

.method public mergeToken(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3760
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4900(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setReceiver(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5400(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5600(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSender(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5100(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5300(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSourceChannel(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4500(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSourceChannelBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4700(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSourcePort(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4200(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSourcePortBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4400(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5700(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Height;)V

    return-object p0
.end method

.method public setTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3903
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3904
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$5700(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Height;)V

    return-object p0
.end method

.method public setTimeoutTimestamp(J)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3969
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$6000(Lwallet/core/jni/proto/Cosmos$Message$Transfer;J)V

    return-object p0
.end method

.method public setToken(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3752
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4800(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setToken(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3743
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3744
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->access$4800(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method
