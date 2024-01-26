.class final Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WCBinanceCancelOrder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;
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
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;
    .locals 4

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;

    .line 34
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v2, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->REFID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/ElementKt;->getString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v2

    sget-object v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/ElementKt;->getString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object p1

    sget-object v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lcom/github/salomonbrys/kotson/ElementKt;->getString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {v0, v1, v2, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderDeserializer$1;->invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;

    move-result-object p1

    return-object p1
.end method
