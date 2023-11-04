.class final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;
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
        "Lcom/github/salomonbrys/kotson/DeserializerArg;",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;
    .locals 12

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    .line 41
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ORDER_TYPE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getInt(Lcom/google/gson/JsonElement;)I

    move-result v3

    .line 43
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v4, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->PRICE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v4}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getLong(Lcom/google/gson/JsonElement;)J

    move-result-wide v4

    .line 44
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v6, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->QUANTITY:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v6}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getLong(Lcom/google/gson/JsonElement;)J

    move-result-wide v6

    .line 45
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v8, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v8}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v9, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SIDE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v9}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getInt(Lcom/google/gson/JsonElement;)I

    move-result v9

    .line 47
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v10, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v10}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v10

    .line 48
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object p1

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->TIME_INFORCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lcom/github/salomonbrys/kotson/ElementKt;->getInt(Lcom/google/gson/JsonElement;)I

    move-result v11

    move-object v1, v0

    .line 40
    invoke-direct/range {v1 .. v11}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;-><init>(Ljava/lang/String;IJJLjava/lang/String;ILjava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt$tradeOrderDeserializer$1;->invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    move-result-object p1

    return-object p1
.end method
