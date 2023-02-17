.class final Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WCEthereumTransaction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt;
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
        "Ljava/util/List<",
        "+",
        "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWCEthereumTransaction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WCEthereumTransaction.kt\ncom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 GsonBuilder.kt\ncom/github/salomonbrys/kotson/DeserializerArg$Context\n+ 4 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n1#1,26:1\n1849#2:27\n1850#2:35\n86#3:28\n61#4:29\n13#4:30\n63#4,4:31\n*S KotlinDebug\n*F\n+ 1 WCEthereumTransaction.kt\ncom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1\n*L\n20#1:27\n20#1:35\n22#1:28\n22#1:29\n22#1:30\n22#1:31,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;->invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/github/salomonbrys/kotson/DeserializerArg;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kotson/DeserializerArg;",
            ")",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getJson()Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "it.json.asJsonArray"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 21
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/github/salomonbrys/kotson/DeserializerArg;->getContext()Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    move-result-object v3

    const-string v4, "tx"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->getGsonContext()Lcom/google/gson/JsonDeserializationContext;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1$invoke$lambda-0$$inlined$deserialize$1;

    invoke-direct {v4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1$invoke$lambda-0$$inlined$deserialize$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-string v5, "object : TypeToken<T>() {} .type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-string v5, "type.rawType"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 86
    :goto_1
    invoke-interface {v3, v2, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it.context.deserialize(tx)"

    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
