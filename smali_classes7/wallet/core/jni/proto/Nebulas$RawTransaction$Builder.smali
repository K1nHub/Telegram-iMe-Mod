.class public final Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$RawTransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas$RawTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nebulas$RawTransaction;",
        "Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$RawTransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2946
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4100()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nebulas$1;)V
    .locals 0

    .line 2939
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlg()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6400(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3296
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5800(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3256
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3257
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5600(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3025
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3026
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4500(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3376
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3377
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6200(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3336
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3337
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6000(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearHash()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 2985
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4300(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5100(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearSign()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6600(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3185
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5300(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4700(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 3105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4900(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V

    return-object p0
.end method

.method public getAlg()I
    .locals 1

    .line 3391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getAlg()I

    move-result v0

    return v0
.end method

.method public getChainId()I
    .locals 1

    .line 3271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getChainId()I

    move-result v0

    return v0
.end method

.method public getData()Lwallet/core/jni/proto/Nebulas$Data;
    .locals 1

    .line 3210
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getData()Lwallet/core/jni/proto/Nebulas$Data;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3000
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 3120
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSign()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3431
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getSign()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 3160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getTo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3080
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->hasData()Z

    move-result v0

    return v0
.end method

.method public mergeData(Lwallet/core/jni/proto/Nebulas$Data;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3245
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3246
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5500(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lwallet/core/jni/proto/Nebulas$Data;)V

    return-object p0
.end method

.method public setAlg(I)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6300(Lwallet/core/jni/proto/Nebulas$RawTransaction;I)V

    return-object p0
.end method

.method public setChainId(I)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3283
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5700(Lwallet/core/jni/proto/Nebulas$RawTransaction;I)V

    return-object p0
.end method

.method public setData(Lwallet/core/jni/proto/Nebulas$Data$Builder;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5400(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lwallet/core/jni/proto/Nebulas$Data;)V

    return-object p0
.end method

.method public setData(Lwallet/core/jni/proto/Nebulas$Data;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5400(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lwallet/core/jni/proto/Nebulas$Data;)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3012
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3013
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4400(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6100(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3323
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5900(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2972
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4200(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5000(Lwallet/core/jni/proto/Nebulas$RawTransaction;J)V

    return-object p0
.end method

.method public setSign(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3443
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$6500(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3172
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$5200(Lwallet/core/jni/proto/Nebulas$RawTransaction;J)V

    return-object p0
.end method

.method public setTo(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4600(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3092
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3093
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->access$4800(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
