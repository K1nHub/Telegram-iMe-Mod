.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $uri:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->$uri:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 14

    .line 116
    new-instance v10, Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    const-string v1, "iMe"

    const-string v2, "https://imem.app"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    iget-object v11, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    new-instance v12, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 118
    sget-object v13, Lcom/trustwallet/walletconnect/models/session/WCSession;->Companion:Lcom/trustwallet/walletconnect/models/session/WCSession$Companion;

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->$uri:Ljava/lang/String;

    invoke-virtual {v13, v0}, Lcom/trustwallet/walletconnect/models/session/WCSession$Companion;->from(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getChainId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    const-string v3, ""

    const-string v4, ""

    move-object v0, v12

    move-object v5, v10

    .line 117
    invoke-direct/range {v0 .. v9}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;-><init>(Lcom/trustwallet/walletconnect/models/session/WCSession;ILjava/lang/String;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ZLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;->$uri:Ljava/lang/String;

    .line 124
    new-instance v2, Lcom/trustwallet/walletconnect/WCClient;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getGsonBuilder(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getOkHttpClient$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/trustwallet/walletconnect/WCClient;-><init>(Lcom/google/gson/GsonBuilder;Lokhttp3/OkHttpClient;)V

    .line 125
    invoke-static {v0, v2, v12}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$setupClientListeners(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    .line 126
    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v12}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v13, v1}, Lcom/trustwallet/walletconnect/models/session/WCSession$Companion;->from(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v2

    move-object v2, v10

    invoke-static/range {v0 .. v6}, Lcom/trustwallet/walletconnect/WCClient;->connect$default(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/session/WCSession;Lcom/trustwallet/walletconnect/models/WCPeerMeta;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    invoke-static {v11, v12}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$setPendingSessionStoreItem$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidSessionException;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/exceptions/InvalidSessionException;-><init>()V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Lcom/trustwallet/walletconnect/exceptions/InvalidSessionException;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/exceptions/InvalidSessionException;-><init>()V

    throw v0
.end method
