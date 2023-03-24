.class public final Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$CancelTradeOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$CancelTradeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$CancelTradeOrder;",
        "Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$CancelTradeOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2929
    invoke-static {}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$4700()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 2922
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRefid()Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1

    .line 3091
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3092
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$5400(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1

    .line 2968
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2969
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$4900(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1

    .line 3022
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3023
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$5100(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-object p0
.end method

.method public getRefid()Ljava/lang/String;
    .locals 1

    .line 3052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getRefid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3065
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getRefidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getSender()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 2983
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setRefid(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3078
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3079
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$5300(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRefidBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3106
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3107
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$5500(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSender(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2955
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$4800(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3009
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3010
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$5000(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3037
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3038
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->access$5200(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
