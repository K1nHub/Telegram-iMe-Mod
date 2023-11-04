.class public Lcom/trustwallet/walletconnect/WCClient;
.super Lokhttp3/WebSocketListener;
.source "WCClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trustwallet/walletconnect/WCClient$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWCClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WCClient.kt\ncom/trustwallet/walletconnect/WCClient\n+ 2 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Gson.kt\ncom/github/salomonbrys/kotson/GsonKt\n*L\n1#1,406:1\n137#2:407\n135#2:408\n61#2:409\n13#2:410\n63#2,4:411\n139#2:415\n135#2:416\n61#2:417\n13#2:418\n63#2,4:419\n137#2:423\n135#2:424\n61#2:425\n13#2:426\n63#2,4:427\n139#2:431\n135#2:432\n61#2:433\n13#2:434\n63#2,4:435\n137#2:439\n135#2:440\n61#2:441\n13#2:442\n63#2,4:443\n139#2:447\n135#2:448\n61#2:449\n13#2:450\n63#2,4:451\n139#2:455\n135#2:456\n61#2:457\n13#2:458\n63#2,4:459\n61#2:477\n13#2:478\n63#2,4:479\n61#2:484\n13#2:485\n63#2,4:486\n61#2:490\n13#2:491\n63#2,4:492\n61#2:497\n13#2:498\n63#2,4:499\n61#2:504\n13#2:505\n63#2,4:506\n61#2:511\n13#2:512\n63#2,4:513\n61#2:518\n13#2:519\n63#2,4:520\n61#2:525\n13#2:526\n63#2,4:527\n61#2:532\n13#2:533\n63#2,4:534\n61#2:539\n13#2:540\n63#2,4:541\n61#2:546\n13#2:547\n63#2,4:548\n61#2:553\n13#2:554\n63#2,4:555\n61#2:560\n13#2:561\n63#2,4:562\n61#2:567\n13#2:568\n63#2,4:569\n61#2:574\n13#2:575\n63#2,4:576\n61#2:581\n13#2:582\n63#2,4:583\n61#2:588\n13#2:589\n63#2,4:590\n1849#3,2:463\n1849#3,2:465\n1849#3,2:467\n1849#3,2:469\n1849#3,2:471\n1849#3,2:473\n1#4:475\n17#5:476\n17#5:483\n23#5:496\n23#5:503\n23#5:510\n23#5:517\n23#5:524\n23#5:531\n23#5:538\n23#5:545\n23#5:552\n23#5:559\n23#5:566\n23#5:573\n23#5:580\n23#5:587\n*S KotlinDebug\n*F\n+ 1 WCClient.kt\ncom/trustwallet/walletconnect/WCClient\n*L\n36#1:407\n36#1:408\n36#1:409\n36#1:410\n36#1:411,4\n37#1:415\n37#1:416\n37#1:417\n37#1:418\n37#1:419,4\n38#1:423\n38#1:424\n38#1:425\n38#1:426\n38#1:427,4\n39#1:431\n39#1:432\n39#1:433\n39#1:434\n39#1:435,4\n40#1:439\n40#1:440\n40#1:441\n40#1:442\n40#1:443,4\n41#1:447\n41#1:448\n41#1:449\n41#1:450\n41#1:451,4\n42#1:455\n42#1:456\n42#1:457\n42#1:458\n42#1:459,4\n227#1:477\n227#1:478\n227#1:479,4\n228#1:484\n228#1:485\n228#1:486,4\n246#1:490\n246#1:491\n246#1:492,4\n261#1:497\n261#1:498\n261#1:499,4\n269#1:504\n269#1:505\n269#1:506,4\n276#1:511\n276#1:512\n276#1:513,4\n282#1:518\n282#1:519\n282#1:520,4\n289#1:525\n289#1:526\n289#1:527,4\n295#1:532\n295#1:533\n295#1:534,4\n300#1:539\n300#1:540\n300#1:541,4\n306#1:546\n306#1:547\n306#1:548,4\n312#1:553\n312#1:554\n312#1:555,4\n318#1:560\n318#1:561\n318#1:562,4\n324#1:567\n324#1:568\n324#1:569,4\n332#1:574\n332#1:575\n332#1:576,4\n337#1:581\n337#1:582\n337#1:583,4\n343#1:588\n343#1:589\n343#1:590,4\n89#1:463,2\n109#1:465,2\n117#1:467,2\n123#1:469,2\n129#1:471,2\n138#1:473,2\n227#1:476\n228#1:483\n261#1:496\n269#1:503\n276#1:510\n282#1:517\n289#1:524\n295#1:531\n300#1:538\n306#1:545\n312#1:552\n318#1:559\n324#1:566\n332#1:573\n337#1:580\n343#1:587\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private chainId:Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;

.field private handshakeId:J

.field private final httpClient:Lokhttp3/OkHttpClient;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/WebSocketListener;",
            ">;"
        }
    .end annotation
.end field

.field private onBnbCancel:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onBnbTrade:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onBnbTransfer:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onBnbTxConfirm:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTxConfirmParam;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onCustomRequest:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onDisconnect:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onEthSendTransaction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onEthSign:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onEthSignTransaction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onGetAccounts:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSessionRequest:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/WCPeerMeta;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSignTransaction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/WCSignTransaction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onWalletAddNetwork:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/session/WCAddNetwork;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onWalletChangeNetwork:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private peerId:Ljava/lang/String;

.field private peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

.field private remotePeerId:Ljava/lang/String;

.field private session:Lcom/trustwallet/walletconnect/models/session/WCSession;

.field private socket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>(Lcom/google/gson/GsonBuilder;Lokhttp3/OkHttpClient;)V
    .locals 7

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/trustwallet/walletconnect/WCClient;->httpClient:Lokhttp3/OkHttpClient;

    const-string p2, "WCClient"

    .line 32
    iput-object p2, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    const-string p2, "builder\n        .serializeNulls()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;->getCancelOrderSerializer()Lcom/google/gson/JsonSerializer;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Any"

    if-eqz p2, :cond_d

    .line 13
    new-instance v1, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$1;

    invoke-direct {v1}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string/jumbo v2, "object : TypeToken<T>() {} .type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    const-string/jumbo v4, "type.rawType"

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 135
    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    const-string/jumbo p2, "this.registerTypeAdapter\u2026eToken<T>(), typeAdapter)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrderKt;->getCancelOrderDeserializer()Lcom/google/gson/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$2;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$2;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    :goto_1
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;->getTradeOrderSerializer()Lcom/google/gson/JsonSerializer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$3;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$3;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    :goto_2
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrderKt;->getTradeOrderDeserializer()Lcom/google/gson/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$4;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$4;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 66
    :cond_3
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    :goto_3
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;->getTransferOrderSerializer()Lcom/google/gson/JsonSerializer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$5;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$5;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 66
    :cond_4
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    :goto_4
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrderKt;->getTransferOrderDeserializer()Lcom/google/gson/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 13
    new-instance v3, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$6;

    invoke-direct {v3}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$6;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 64
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 66
    :cond_5
    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    :goto_5
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt;->getEthTransactionSerializer()Lcom/google/gson/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13
    new-instance v0, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$7;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/WCClient$special$$inlined$registerTypeAdapter$7;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 64
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 66
    :cond_6
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 135
    :goto_6
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    .line 47
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    const-wide/16 p1, -0x1

    .line 67
    iput-wide p1, p0, Lcom/trustwallet/walletconnect/WCClient;->handshakeId:J

    .line 69
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onFailure$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onFailure$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onFailure:Lkotlin/jvm/functions/Function1;

    .line 70
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onDisconnect$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onDisconnect$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onDisconnect:Lkotlin/jvm/functions/Function2;

    .line 71
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onSessionRequest$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onSessionRequest$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onSessionRequest:Lkotlin/jvm/functions/Function2;

    .line 72
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onEthSign$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onEthSign$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSign:Lkotlin/jvm/functions/Function2;

    .line 73
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onEthSignTransaction$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onEthSignTransaction$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSignTransaction:Lkotlin/jvm/functions/Function2;

    .line 74
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onEthSendTransaction$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onEthSendTransaction$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSendTransaction:Lkotlin/jvm/functions/Function2;

    .line 75
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onCustomRequest$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onCustomRequest$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onCustomRequest:Lkotlin/jvm/functions/Function2;

    .line 76
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onBnbTrade$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onBnbTrade$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbTrade:Lkotlin/jvm/functions/Function2;

    .line 77
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onBnbCancel$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onBnbCancel$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbCancel:Lkotlin/jvm/functions/Function2;

    .line 78
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onBnbTransfer$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onBnbTransfer$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbTransfer:Lkotlin/jvm/functions/Function2;

    .line 79
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onBnbTxConfirm$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onBnbTxConfirm$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbTxConfirm:Lkotlin/jvm/functions/Function2;

    .line 80
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onGetAccounts$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onGetAccounts$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onGetAccounts:Lkotlin/jvm/functions/Function1;

    .line 81
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onSignTransaction$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onSignTransaction$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onSignTransaction:Lkotlin/jvm/functions/Function2;

    .line 82
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onWalletChangeNetwork:Lkotlin/jvm/functions/Function2;

    .line 83
    sget-object p1, Lcom/trustwallet/walletconnect/WCClient$onWalletAddNetwork$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onWalletAddNetwork$1;

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onWalletAddNetwork:Lkotlin/jvm/functions/Function2;

    return-void

    .line 139
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic connect$default(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/session/WCSession;Lcom/trustwallet/walletconnect/models/WCPeerMeta;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 141
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p6, "randomUUID().toString()"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trustwallet/walletconnect/WCClient;->connect(Lcom/trustwallet/walletconnect/models/session/WCSession;Lcom/trustwallet/walletconnect/models/WCPeerMeta;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: connect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final decryptMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 227
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    const-string v1, "gson"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Lcom/trustwallet/walletconnect/WCClient$decryptMessage$$inlined$fromJson$1;

    invoke-direct {v2}, Lcom/trustwallet/walletconnect/WCClient$decryptMessage$$inlined$fromJson$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string/jumbo v3, "object : TypeToken<T>() {} .type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    const-string/jumbo v5, "type.rawType"

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 17
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    check-cast p1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;

    .line 228
    iget-object v2, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->getPayload()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/trustwallet/walletconnect/WCClient$decryptMessage$$inlined$fromJson$2;

    invoke-direct {v1}, Lcom/trustwallet/walletconnect/WCClient$decryptMessage$$inlined$fromJson$2;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 17
    :goto_1
    invoke-virtual {v2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    check-cast p1, Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;

    .line 229
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    .line 230
    sget-object v2, Lcom/trustwallet/walletconnect/WCCipher;->INSTANCE:Lcom/trustwallet/walletconnect/WCCipher;

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/trustwallet/walletconnect/extensions/StringKt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/trustwallet/walletconnect/WCCipher;->decrypt(Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;[B)[B

    move-result-object p1

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 229
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "session can\'t be null on message receive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final encryptAndSend(Ljava/lang/String;)Z
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    if-eqz v0, :cond_2

    .line 366
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    sget-object v2, Lcom/trustwallet/walletconnect/WCCipher;->INSTANCE:Lcom/trustwallet/walletconnect/WCCipher;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/trustwallet/walletconnect/extensions/StringKt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/trustwallet/walletconnect/WCCipher;->encrypt([B[B)Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 367
    new-instance v1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;

    .line 370
    iget-object v2, p0, Lcom/trustwallet/walletconnect/WCClient;->remotePeerId:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_0
    sget-object v0, Lcom/trustwallet/walletconnect/models/MessageType;->PUB:Lcom/trustwallet/walletconnect/models/MessageType;

    const-string/jumbo v3, "payload"

    .line 372
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-direct {v1, v2, v0, p1}, Lcom/trustwallet/walletconnect/models/WCSocketMessage;-><init>(Ljava/lang/String;Lcom/trustwallet/walletconnect/models/MessageType;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> encrypted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->socket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 365
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "session can\'t be null on message send"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final handleMessage(Ljava/lang/String;)V
    .locals 4

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    .line 13
    new-instance v1, Lcom/trustwallet/walletconnect/WCClient$handleMessage$$inlined$typeToken$1;

    invoke-direct {v1}, Lcom/trustwallet/walletconnect/WCClient$handleMessage$$inlined$typeToken$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string/jumbo v2, "object : TypeToken<T>() {} .type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string/jumbo v2, "type.rawType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 246
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;

    .line 247
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getMethod()Lcom/trustwallet/walletconnect/models/WCMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo p1, "request"

    .line 249
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/trustwallet/walletconnect/WCClient;->handleRequest(Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;)V

    goto :goto_1

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onCustomRequest:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;->getRequestId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/trustwallet/walletconnect/WCClient;->invalidParams(J)Z

    :goto_1
    return-void
.end method

.method private final handleRequest(Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest<",
            "Lcom/google/gson/JsonArray;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getMethod()Lcom/trustwallet/walletconnect/models/WCMethod;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/trustwallet/walletconnect/WCClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, "type.rawType"

    const-string v3, "fromJson(json, typeToken<T>())"

    const-string/jumbo v4, "object : TypeToken<T>() {} .type"

    const-string v5, "gson"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_11

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$14;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$14;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_1
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    check-cast v0, Ljava/util/List;

    .line 344
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/session/WCAddNetwork;

    if-eqz v0, :cond_2

    .line 345
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onWalletAddNetwork:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 344
    :cond_2
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$13;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$13;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_3
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_2
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    check-cast v0, Ljava/util/List;

    .line 338
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/session/WCChangeNetwork;

    if-eqz v0, :cond_4

    .line 339
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCChangeNetwork;->getChainIdHex()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onWalletChangeNetwork:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 338
    :cond_4
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 332
    :pswitch_3
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$12;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$12;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_5

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 66
    :cond_5
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_3
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    check-cast v0, Ljava/util/List;

    .line 333
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/WCSignTransaction;

    if-eqz v0, :cond_6

    .line 334
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onSignTransaction:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 333
    :cond_6
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 329
    :pswitch_4
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->onGetAccounts:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 324
    :pswitch_5
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$11;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$11;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_7

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 66
    :cond_7
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_4
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    check-cast v0, Ljava/util/List;

    .line 325
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTxConfirmParam;

    if-eqz v0, :cond_8

    .line 326
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbTxConfirm:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 325
    :cond_8
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 306
    :pswitch_6
    :try_start_0
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v6, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$8;

    invoke-direct {v6}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$8;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_9

    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v7}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 64
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 66
    :cond_9
    invoke-static {v6}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 23
    :goto_5
    invoke-virtual {v0, v1, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    check-cast v0, Ljava/util/List;

    .line 307
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder;

    if-eqz v0, :cond_a

    .line 308
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbCancel:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 307
    :cond_a
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :catch_0
    :goto_6
    :try_start_1
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v6, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$9;

    invoke-direct {v6}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$9;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_b

    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v7}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 64
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 66
    :cond_b
    invoke-static {v6}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 23
    :goto_7
    invoke-virtual {v0, v1, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    check-cast v0, Ljava/util/List;

    .line 313
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder;

    if-eqz v0, :cond_c

    .line 314
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbTrade:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 313
    :cond_c
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    :catch_1
    :goto_8
    :try_start_2
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$10;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$10;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_d

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 64
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 66
    :cond_d
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_9
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    check-cast v0, Ljava/util/List;

    .line 319
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder;

    if-eqz v0, :cond_e

    .line 320
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onBnbTransfer:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 319
    :cond_e
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    :pswitch_7
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$7;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$7;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_f

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 66
    :cond_f
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_a
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    check-cast v0, Ljava/util/List;

    .line 301
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;

    if-eqz v0, :cond_10

    .line 302
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSendTransaction:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 301
    :cond_10
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 295
    :pswitch_8
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$6;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$6;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_11

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    .line 66
    :cond_11
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_b
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    check-cast v0, Ljava/util/List;

    .line 296
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;

    if-eqz v0, :cond_12

    .line 297
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSignTransaction:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 296
    :cond_12
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 289
    :pswitch_9
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v6, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$5;

    invoke-direct {v6}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$5;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_13

    move-object v4, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    .line 66
    :cond_13
    invoke-static {v6}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_c
    invoke-virtual {v0, v5, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    check-cast v0, Ljava/util/List;

    .line 290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_14

    .line 292
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSign:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v2, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    sget-object v3, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->TYPED_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-direct {v2, v0, v3}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;-><init>(Ljava/util/List;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;)V

    invoke-interface {v1, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 291
    :cond_14
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 282
    :pswitch_a
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v6, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$4;

    invoke-direct {v6}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$4;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_15

    move-object v4, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    .line 66
    :cond_15
    invoke-static {v6}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_d
    invoke-virtual {v0, v5, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    check-cast v0, Ljava/util/List;

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_16

    .line 285
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSign:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v2, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    sget-object v3, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->PERSONAL_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-direct {v2, v0, v3}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;-><init>(Ljava/util/List;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;)V

    invoke-interface {v1, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 284
    :cond_16
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 276
    :pswitch_b
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v6, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$3;

    invoke-direct {v6}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$3;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_17

    move-object v4, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    .line 66
    :cond_17
    invoke-static {v6}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_e
    invoke-virtual {v0, v5, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    check-cast v0, Ljava/util/List;

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_18

    .line 279
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSign:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v2, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    sget-object v3, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-direct {v2, v0, v3}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;-><init>(Ljava/util/List;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;)V

    invoke-interface {v1, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 278
    :cond_18
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 269
    :pswitch_c
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$2;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$2;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_19

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    .line 66
    :cond_19
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_f
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    check-cast v0, Ljava/util/List;

    .line 270
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;

    if-eqz v0, :cond_1a

    .line 271
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->getApproved()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 272
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCClient;->killSession()Z

    goto/16 :goto_11

    .line 270
    :cond_1a
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 261
    :pswitch_d
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 13
    new-instance v5, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$1;

    invoke-direct {v5}, Lcom/trustwallet/walletconnect/WCClient$handleRequest$$inlined$fromJson$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v4, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1b

    move-object v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 64
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    .line 66
    :cond_1b
    invoke-static {v5}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    :goto_10
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    check-cast v0, Ljava/util/List;

    .line 262
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;

    if-eqz v0, :cond_1c

    .line 263
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/trustwallet/walletconnect/WCClient;->handshakeId:J

    .line 264
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->getPeerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->remotePeerId:Ljava/lang/String;

    .line 265
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->getChainId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->chainId:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->onSessionRequest:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->getPeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 262
    :cond_1c
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;-><init>(J)V

    throw v0

    .line 347
    :pswitch_e
    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :catch_2
    :cond_1d
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final invalidParams(J)Z
    .locals 8

    .line 234
    new-instance v7, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;

    .line 236
    sget-object v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->Companion:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;

    const-string v1, "Invalid parameters"

    invoke-virtual {v0, v1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;->invalidParams(Ljava/lang/String;)Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v2, p1

    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;-><init>(Ljava/lang/String;JLcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gson.toJson(response)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->encryptAndSend(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static synthetic rejectRequest$default(Lcom/trustwallet/walletconnect/WCClient;JLjava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p3, "Reject by the user"

    .line 216
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/trustwallet/walletconnect/WCClient;->rejectRequest(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rejectRequest"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic rejectSession$default(Lcom/trustwallet/walletconnect/WCClient;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Session rejected"

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->rejectSession(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rejectSession"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resetState()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 394
    iput-wide v0, p0, Lcom/trustwallet/walletconnect/WCClient;->handshakeId:J

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    .line 397
    iput-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->peerId:Ljava/lang/String;

    .line 398
    iput-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->remotePeerId:Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    return-void
.end method

.method private final subscribe(Ljava/lang/String;)Z
    .locals 4

    .line 352
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;

    .line 354
    sget-object v1, Lcom/trustwallet/walletconnect/models/MessageType;->SUB:Lcom/trustwallet/walletconnect/models/MessageType;

    const-string v2, ""

    .line 352
    invoke-direct {v0, p1, v1, v2}, Lcom/trustwallet/walletconnect/models/WCSocketMessage;-><init>(Ljava/lang/String;Lcom/trustwallet/walletconnect/models/MessageType;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 358
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> subscribe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->socket:Lokhttp3/WebSocket;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic updateSession$default(Lcom/trustwallet/walletconnect/WCClient;Ljava/util/List;Ljava/lang/Integer;ZILjava/lang/Object;)Z
    .locals 1

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 175
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/trustwallet/walletconnect/WCClient;->updateSession(Ljava/util/List;Ljava/lang/Integer;Z)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateSession"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final approveRequest(JLjava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;)Z"
        }
    .end annotation

    .line 209
    new-instance v7, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcResponse;

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcResponse;-><init>(Ljava/lang/String;JLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gson.toJson(response)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->encryptAndSend(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final approveSession(Ljava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-wide v0, p0, Lcom/trustwallet/walletconnect/WCClient;->handshakeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 160
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->chainId:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;

    const/4 v2, 0x0

    .line 164
    iget-object v5, p0, Lcom/trustwallet/walletconnect/WCClient;->peerId:Ljava/lang/String;

    .line 165
    iget-object v6, p0, Lcom/trustwallet/walletconnect/WCClient;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v3, p2

    move-object v4, p1

    .line 161
    invoke-direct/range {v1 .. v8}, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;-><init>(ZILjava/util/List;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    new-instance p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcResponse;

    const/4 v2, 0x0

    .line 168
    iget-wide v3, p0, Lcom/trustwallet/walletconnect/WCClient;->handshakeId:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-object v5, v0

    .line 167
    invoke-direct/range {v1 .. v7}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcResponse;-><init>(Ljava/lang/String;JLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    iget-object p2, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gson.toJson(response)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->encryptAndSend(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "handshakeId must be greater than 0 on session approve"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connect(Lcom/trustwallet/walletconnect/models/session/WCSession;Lcom/trustwallet/walletconnect/models/WCPeerMeta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "peerMeta"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "peerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getTopic()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCClient;->killSession()Z

    .line 146
    :cond_1
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    .line 147
    iput-object p2, p0, Lcom/trustwallet/walletconnect/WCClient;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    .line 148
    iput-object p3, p0, Lcom/trustwallet/walletconnect/WCClient;->peerId:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/trustwallet/walletconnect/WCClient;->remotePeerId:Ljava/lang/String;

    .line 151
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 152
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getBridge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/trustwallet/walletconnect/WCClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1, p0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->socket:Lokhttp3/WebSocket;

    return-void
.end method

.method public final disconnect()Z
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->socket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPeerId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->remotePeerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    return-object v0
.end method

.method public final killSession()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    .line 204
    invoke-static/range {v0 .. v5}, Lcom/trustwallet/walletconnect/WCClient;->updateSession$default(Lcom/trustwallet/walletconnect/WCClient;Ljava/util/List;Ljava/lang/Integer;ZILjava/lang/Object;)Z

    .line 205
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCClient;->disconnect()Z

    move-result v0

    return v0
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    const-string v1, "<< websocket closed >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 469
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocketListener;

    .line 123
    invoke-virtual {v1, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    const-string v1, "<< closing socket >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/trustwallet/walletconnect/WCClient;->resetState()V

    .line 136
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->onDisconnect:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 473
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocketListener;

    .line 138
    invoke-virtual {v1, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 2

    const-string/jumbo v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/trustwallet/walletconnect/WCClient;->resetState()V

    .line 115
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->onFailure:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 467
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocketListener;

    .line 117
    invoke-virtual {v1, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<== message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p2}, Lcom/trustwallet/walletconnect/WCClient;->decryptMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<== decrypted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, v0}, Lcom/trustwallet/walletconnect/WCClient;->handleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 465
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/WebSocketListener;

    if-nez v0, :cond_0

    move-object v3, p2

    goto :goto_1

    :cond_0
    move-object v3, v0

    .line 109
    :goto_1
    invoke-virtual {v2, p1, v3}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    .line 107
    :try_start_1
    iget-object v2, p0, Lcom/trustwallet/walletconnect/WCClient;->onFailure:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 465
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/WebSocketListener;

    if-nez v0, :cond_1

    move-object v3, p2

    goto :goto_3

    :cond_1
    move-object v3, v0

    .line 109
    :goto_3
    invoke-virtual {v2, p1, v3}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void

    :goto_4
    iget-object v2, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 465
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/WebSocketListener;

    if-nez v0, :cond_3

    move-object v4, p2

    goto :goto_6

    :cond_3
    move-object v4, v0

    .line 109
    :goto_6
    invoke-virtual {v3, p1, v4}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    goto :goto_5

    .line 466
    :cond_4
    throw v1
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 2

    const-string/jumbo v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    const-string v1, "<== pong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 471
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocketListener;

    .line 129
    invoke-virtual {v1, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2

    const-string/jumbo v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->TAG:Ljava/lang/String;

    const-string v1, "<< websocket opened >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCClient;->listeners:Ljava/util/Set;

    .line 463
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocketListener;

    .line 89
    invoke-virtual {v1, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    if-eqz p1, :cond_2

    .line 92
    iget-object p2, p0, Lcom/trustwallet/walletconnect/WCClient;->peerId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->subscribe(Ljava/lang/String;)Z

    .line 96
    invoke-direct {p0, p2}, Lcom/trustwallet/walletconnect/WCClient;->subscribe(Ljava/lang/String;)Z

    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "peerId can\'t be null on connection open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "session can\'t be null on connection open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final rejectRequest(JLjava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;

    .line 219
    sget-object v1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->Companion:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;

    invoke-virtual {v1, p3}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;->serverError(Ljava/lang/String;)Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v3, p1

    .line 217
    invoke-direct/range {v1 .. v7}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;-><init>(Ljava/lang/String;JLcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 223
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gson.toJson(response)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->encryptAndSend(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final rejectSession(Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-wide v3, p0, Lcom/trustwallet/walletconnect/WCClient;->handshakeId:J

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;

    const/4 v2, 0x0

    .line 196
    sget-object v1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->Companion:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;

    invoke-virtual {v1, p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;->serverError(Ljava/lang/String;)Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    .line 194
    invoke-direct/range {v1 .. v7}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;-><init>(Ljava/lang/String;JLcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 200
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(response)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->encryptAndSend(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 192
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handshakeId must be greater than 0 on session reject"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnDisconnect(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onDisconnect:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnEthSendTransaction(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSendTransaction:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnEthSign(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSign:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnEthSignTransaction(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onEthSignTransaction:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnFailure(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onFailure:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSessionRequest(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lcom/trustwallet/walletconnect/models/WCPeerMeta;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onSessionRequest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnWalletChangeNetwork(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->onWalletChangeNetwork:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final updateSession(Ljava/util/List;Ljava/lang/Integer;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Z)Z"
        }
    .end annotation

    .line 176
    new-instance v8, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;

    .line 177
    invoke-static {}, Lcom/trustwallet/walletconnect/WCClientKt;->access$generateId()J

    move-result-wide v1

    .line 178
    sget-object v4, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_UPDATE:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 180
    new-instance v0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;

    if-nez p2, :cond_1

    .line 182
    iget-object v3, p0, Lcom/trustwallet/walletconnect/WCClient;->chainId:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object v3, p2

    .line 180
    :goto_0
    invoke-direct {v0, p3, v3, p1}, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;-><init>(ZLjava/lang/Integer;Ljava/util/List;)V

    .line 179
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    .line 176
    invoke-direct/range {v0 .. v7}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;-><init>(JLjava/lang/String;Lcom/trustwallet/walletconnect/models/WCMethod;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->chainId:Ljava/lang/String;

    .line 188
    iget-object p1, p0, Lcom/trustwallet/walletconnect/WCClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gson.toJson(request)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/trustwallet/walletconnect/WCClient;->encryptAndSend(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
