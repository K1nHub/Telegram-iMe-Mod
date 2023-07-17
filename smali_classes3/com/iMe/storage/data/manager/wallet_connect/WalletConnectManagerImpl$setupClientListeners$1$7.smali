.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field final synthetic $this_with:Lcom/trustwallet/walletconnect/WCClient;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 293
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->invoke(JI)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JI)V
    .locals 3

    .line 294
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkByChainId(J)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p3

    .line 295
    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-virtual {p3}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onWalletChangeUnsupportedNetwork()V

    .line 297
    iget-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/trustwallet/walletconnect/WCClient;->rejectRequest(JLjava/lang/String;)Z

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onWalletChangeNetwork(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
