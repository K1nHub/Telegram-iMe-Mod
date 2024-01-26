.class public final Lwallet/core/jni/proto/NULS$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NULS$SigningInput;",
        "Lwallet/core/jni/proto/NULS$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3966
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6000()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NULS$1;)V
    .locals 0

    .line 3959
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4183
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4184
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7000(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearBalance()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$8100(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7200(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4059
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4060
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6400(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearIdassetsId()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4263
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4264
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7400(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4303
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4304
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7600(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4005
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6200(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearRemark()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7800(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4452
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$8300(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 4128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4129
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6700(Lwallet/core/jni/proto/NULS$SigningInput;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBalance()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getBalance()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()I
    .locals 1

    .line 4198
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getChainId()I

    move-result v0

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 4020
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdassetsId()I
    .locals 1

    .line 4238
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getIdassetsId()I

    move-result v0

    return v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4278
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 4318
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemarkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getRemarkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 4427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getTimestamp()I

    move-result v0

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 4089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4170
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6900(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBalance(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$8000(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChainId(I)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4210
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7100(Lwallet/core/jni/proto/NULS$SigningInput;I)V

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4046
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4047
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6300(Lwallet/core/jni/proto/NULS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6500(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdassetsId(I)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4250
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4251
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7300(Lwallet/core/jni/proto/NULS$SigningInput;I)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4290
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4291
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7500(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3992
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3993
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6100(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRemark(Ljava/lang/String;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7700(Lwallet/core/jni/proto/NULS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRemarkBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4372
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4373
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$7900(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(I)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4439
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4440
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$8200(Lwallet/core/jni/proto/NULS$SigningInput;I)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4115
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4116
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6600(Lwallet/core/jni/proto/NULS$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4143
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->access$6800(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
