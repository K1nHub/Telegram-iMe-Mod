.class public final Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$OfferNftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$OfferNftMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$OfferNftMessage;",
        "Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$OfferNftMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2965
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$3800()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 2958
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 3320
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$5400(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public clearCollectionName()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 3156
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3157
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4600(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public clearCreator()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4300(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public clearName()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 3225
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3226
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4900(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public clearPropertyVersion()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 3280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$5200(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public clearReceiver()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 3018
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4000(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 3295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .line 3117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3130
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getCollectionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 3048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getCreator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getCreatorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyVersion()J
    .locals 2

    .line 3255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getPropertyVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 2979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getReceiver()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3307
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$5300(Lwallet/core/jni/proto/Aptos$OfferNftMessage;J)V

    return-object p0
.end method

.method public setCollectionName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3143
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4500(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCollectionNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3171
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3172
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4700(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4200(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCreatorBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4400(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4800(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3240
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3241
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$5000(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPropertyVersion(J)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3267
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$5100(Lwallet/core/jni/proto/Aptos$OfferNftMessage;J)V

    return-object p0
.end method

.method public setReceiver(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3005
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$3900(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3033
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3034
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->access$4100(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
