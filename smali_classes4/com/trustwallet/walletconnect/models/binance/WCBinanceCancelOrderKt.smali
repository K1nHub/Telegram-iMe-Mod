.class public final Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;
.super Ljava/lang/Object;
.source "WCBinanceCancelOrder.kt"


# static fields
.field private static final cancelOrderDeserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
            ">;"
        }
    .end annotation
.end field

.field private static final cancelOrderSerializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;->cancelOrderDeserializer:Lcom/google/gson/JsonDeserializer;

    .line 40
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonSerializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonSerializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;->cancelOrderSerializer:Lcom/google/gson/JsonSerializer;

    return-void
.end method

.method public static final getCancelOrderDeserializer()Lcom/google/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonDeserializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;->cancelOrderDeserializer:Lcom/google/gson/JsonDeserializer;

    return-object v0
.end method

.method public static final getCancelOrderSerializer()Lcom/google/gson/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonSerializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;->cancelOrderSerializer:Lcom/google/gson/JsonSerializer;

    return-object v0
.end method
