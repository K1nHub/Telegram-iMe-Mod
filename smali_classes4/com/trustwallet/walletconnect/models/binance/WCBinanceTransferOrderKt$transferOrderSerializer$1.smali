.class final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WCBinanceTransferOrder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;
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
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
        ">;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;

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
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
            ">;)",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 48
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->INPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getContext()Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/github/salomonbrys/kotson/ElementKt;->addProperty(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 49
    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->OUTPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getContext()Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/github/salomonbrys/kotson/ElementKt;->addProperty(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/github/salomonbrys/kotson/SerializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderSerializer$1;->invoke(Lcom/github/salomonbrys/kotson/SerializerArg;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
