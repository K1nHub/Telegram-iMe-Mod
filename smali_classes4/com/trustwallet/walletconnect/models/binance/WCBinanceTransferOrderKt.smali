.class public final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;
.super Ljava/lang/Object;
.source "WCBinanceTransferOrder.kt"


# static fields
.field private static final transferOrderDeserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
            ">;"
        }
    .end annotation
.end field

.field private static final transferOrderSerializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;->transferOrderDeserializer:Lcom/google/gson/JsonDeserializer;

    .line 46
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonSerializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonSerializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;->transferOrderSerializer:Lcom/google/gson/JsonSerializer;

    return-void
.end method

.method public static final getTransferOrderDeserializer()Lcom/google/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonDeserializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;->transferOrderDeserializer:Lcom/google/gson/JsonDeserializer;

    return-object v0
.end method

.method public static final getTransferOrderSerializer()Lcom/google/gson/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonSerializer<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;->transferOrderSerializer:Lcom/google/gson/JsonSerializer;

    return-object v0
.end method
