.class public final Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TradeOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TradeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TradeOrder;",
        "Lwallet/core/jni/proto/Binance$TradeOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TradeOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2126
    invoke-static {}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$2700()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 2119
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearId()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2219
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2220
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3100(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearOrdertype()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2343
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2344
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3700(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearPrice()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$4100(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearQuantity()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2463
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2464
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$4300(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2165
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$2900(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearSide()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2383
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2384
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3900(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2288
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3400(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public clearTimeinforce()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2503
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$4500(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 2180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOrdertype()J
    .locals 2

    .line 2318
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getOrdertype()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrice()J
    .locals 2

    .line 2398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuantity()J
    .locals 2

    .line 2438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getQuantity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSender()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getSender()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSide()J
    .locals 2

    .line 2358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getSide()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeinforce()J
    .locals 2

    .line 2478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getTimeinforce()J

    move-result-wide v0

    return-wide v0
.end method

.method public setId(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3000(Lwallet/core/jni/proto/Binance$TradeOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3200(Lwallet/core/jni/proto/Binance$TradeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOrdertype(J)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3600(Lwallet/core/jni/proto/Binance$TradeOrder;J)V

    return-object p0
.end method

.method public setPrice(J)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$4000(Lwallet/core/jni/proto/Binance$TradeOrder;J)V

    return-object p0
.end method

.method public setQuantity(J)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2450
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$4200(Lwallet/core/jni/proto/Binance$TradeOrder;J)V

    return-object p0
.end method

.method public setSender(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2152
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2153
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$2800(Lwallet/core/jni/proto/Binance$TradeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSide(J)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3800(Lwallet/core/jni/proto/Binance$TradeOrder;J)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2275
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3300(Lwallet/core/jni/proto/Binance$TradeOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2303
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2304
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$3500(Lwallet/core/jni/proto/Binance$TradeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeinforce(J)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->access$4400(Lwallet/core/jni/proto/Binance$TradeOrder;J)V

    return-object p0
.end method
