.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onSessionRequest(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V
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
.field final synthetic $client:Lcom/trustwallet/walletconnect/WCClient;

.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;->$client:Lcom/trustwallet/walletconnect/WCClient;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;->$client:Lcom/trustwallet/walletconnect/WCClient;

    .line 360
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWallet(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getChainId()J

    move-result-wide v2

    long-to-int v3, v2

    .line 359
    invoke-virtual {v0, v1, v3}, Lcom/trustwallet/walletconnect/WCClient;->approveSession(Ljava/util/List;I)Z

    return-void
.end method
