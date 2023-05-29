.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->updateSessionsChain()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,429:1\n1855#2,2:430\n*S KotlinDebug\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1\n*L\n337#1:430,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/WCClient;

    .line 339
    invoke-static {v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWallet(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 340
    invoke-static {v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getChainId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    .line 338
    invoke-virtual {v2, v3, v4, v5}, Lcom/trustwallet/walletconnect/WCClient;->updateSession(Ljava/util/List;Ljava/lang/Integer;Z)Z

    goto :goto_0

    :cond_2
    return-void
.end method
