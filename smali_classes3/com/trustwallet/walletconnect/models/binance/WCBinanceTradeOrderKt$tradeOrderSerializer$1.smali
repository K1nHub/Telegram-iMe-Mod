.class final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WCBinanceTradeOrder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/github/salomonbrys/kotson/SerializerArg<",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
        ">;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/github/salomonbrys/kotson/SerializerArg;)Lcom/google/gson/JsonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kotson/SerializerArg<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
            ">;)",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 54
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ORDER_TYPE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getOrderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 56
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->PRICE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getPrice()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 57
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->QUANTITY:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getQuantity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 58
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SIDE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getSide()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 60
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->TIME_INFORCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->getTimeInforce()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lcom/github/salomonbrys/kotson/SerializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;->invoke(Lcom/github/salomonbrys/kotson/SerializerArg;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
