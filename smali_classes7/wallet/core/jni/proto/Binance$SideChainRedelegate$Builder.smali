.class public final Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SideChainRedelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SideChainRedelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SideChainRedelegate;",
        "Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SideChainRedelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13056
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$22600()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 13049
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1

    .line 13186
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23500(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1

    .line 13224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13225
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23700(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddr()Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1

    .line 13083
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$22800(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public clearValidatorDstAddr()Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1

    .line 13139
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23200(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public clearValidatorSrcAddr()Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1

    .line 13111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23000(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-object p0
.end method

.method public getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 13156
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 13197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDelegatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorDstAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13122
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getValidatorDstAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorSrcAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13094
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getValidatorSrcAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 13149
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13179
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23400(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13171
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13172
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23300(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13162
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13163
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23300(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13215
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13216
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23600(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13235
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13236
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23800(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDelegatorAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$22700(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorDstAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13130
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$23100(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorSrcAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->access$22900(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
