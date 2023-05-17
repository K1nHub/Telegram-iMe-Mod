.class final Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;
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
        "Lcom/github/salomonbrys/kotson/SerializerArg<",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
        ">;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kotson/SerializerArg<",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;",
            ">;)",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;->getRefid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refid"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;->getSender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/SerializerArg;->getSrc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$Message;->getSymbol()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "symbol"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lcom/github/salomonbrys/kotson/SerializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt$cancelOrderSerializer$1;->invoke(Lcom/github/salomonbrys/kotson/SerializerArg;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
