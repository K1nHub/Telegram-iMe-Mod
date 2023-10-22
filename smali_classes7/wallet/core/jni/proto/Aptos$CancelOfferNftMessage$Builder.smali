.class public final Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$CancelOfferNftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;",
        "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3918
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$5600()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 3911
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCollectionName()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1

    .line 4109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6400(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public clearCreator()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1

    .line 4040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4041
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6100(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public clearName()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1

    .line 4178
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4179
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6700(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public clearPropertyVersion()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1

    .line 4233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$7000(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public clearReceiver()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1

    .line 3971
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$5800(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-object p0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .line 4070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getCollectionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 4001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getCreator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getCreatorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 4139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4152
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyVersion()J
    .locals 2

    .line 4208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getPropertyVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 3932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getReceiver()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCollectionName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6300(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCollectionNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4124
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6500(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4027
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6000(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCreatorBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4055
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4056
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6200(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4165
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6600(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4193
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6800(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPropertyVersion(J)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$6900(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;J)V

    return-object p0
.end method

.method public setReceiver(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3958
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$5700(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->access$5900(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
