.class public final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;
.super Ljava/lang/Object;
.source "WCBinanceTradeOrder.kt"


# static fields
.field private static final tradeOrderDeserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
            ">;"
        }
    .end annotation
.end field

.field private static final tradeOrderSerializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;->tradeOrderDeserializer:Lcom/google/gson/JsonDeserializer;

    .line 52
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderSerializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonSerializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonSerializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;->tradeOrderSerializer:Lcom/google/gson/JsonSerializer;

    return-void
.end method

.method public static final getTradeOrderDeserializer()Lcom/google/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonDeserializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;->tradeOrderDeserializer:Lcom/google/gson/JsonDeserializer;

    return-object v0
.end method

.method public static final getTradeOrderSerializer()Lcom/google/gson/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonSerializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;->tradeOrderSerializer:Lcom/google/gson/JsonSerializer;

    return-object v0
.end method
