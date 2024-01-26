.class final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;
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
        "Lcom/github/salomonbrys/kotson/DeserializerArg;",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWCBinanceTransferOrder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WCBinanceTransferOrder.kt\ncom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1\n+ 2 GsonBuilder.kt\ncom/github/salomonbrys/kotson/DeserializerArg$Context\n+ 3 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n1#1,51:1\n86#2:52\n86#2:59\n61#3:53\n13#3:54\n63#3,4:55\n61#3:60\n13#3:61\n63#3,4:62\n*S KotlinDebug\n*F\n+ 1 WCBinanceTransferOrder.kt\ncom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1\n*L\n41#1:52\n42#1:59\n41#1:53\n41#1:54\n41#1:55,4\n42#1:60\n42#1:61\n42#1:62,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;
    .locals 8

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;

    .line 41
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getContext()Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v2

    sget-object v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->INPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/ElementKt;->getArray(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->getGsonContext()Lcom/google/gson/JsonDeserializationContext;

    move-result-object v1

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$1;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string/jumbo v4, "object : TypeToken<T>() {} .type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    const-string/jumbo v6, "type.rawType"

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 86
    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "it.context.deserialize(i\u2026ageKey.INPUTS.key].array)"

    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getContext()Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object p1

    sget-object v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->OUTPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/github/salomonbrys/kotson/ElementKt;->get(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lcom/github/salomonbrys/kotson/ElementKt;->getArray(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 86
    invoke-virtual {v2}, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->getGsonContext()Lcom/google/gson/JsonDeserializationContext;

    move-result-object v2

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$2;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$2;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 86
    :goto_1
    invoke-interface {v2, p1, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v2, "it.context.deserialize(i\u2026geKey.OUTPUTS.key].array)"

    .line 42
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 40
    invoke-direct {v0, v1, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt$transferOrderDeserializer$1;->invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$Message;

    move-result-object p1

    return-object p1
.end method
